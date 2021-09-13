import { LightningElement, track, wire} from 'lwc';
import { NavigationMixin } from 'lightning/navigation';
import searchEmployee from '@salesforce/apex/employeeControllers.searchEmployee';
import { createMessageContext, releaseMessageContext,publish} from 'lightning/messageService';
import { refreshApex } from '@salesforce/apex';

export default class OnboardingList extends NavigationMixin(LightningElement) {

    @track statusRecords;
    @track errors;
    
   

    @wire(searchEmployee)
        wiredRecords({error, data}){
            console.log('Data', data);
            this.statusRecords =data;
            this.errors = error;
        }

    handleStatus(event){
        const eventVal = event.detail;
        console.log('Search Param',eventVal);
        searchEmployee({
            searchParam : eventVal

        })

        .then(result => {

            console.log('Employee Record', result);
            this.statusRecords = result;
            this.errors = undefined;
            
        })

        .catch(error =>{

            console.log('Error',error);
            this.errors = error;
            this.statusRecords = undefined;
            
        })
    }

     handleStatusView(event) {
		
		const employeeId = event.detail;
        console.log(employeeId)
		
		this[NavigationMixin.Navigate]({
			type: 'standard__recordPage',
			attributes: {
				recordId: employeeId,
				objectApiName: 'Employee__c',
				actionName: 'edit',
			},
		}).then((url)=>{
            window.open(url,"_blank");
        });
	}
}