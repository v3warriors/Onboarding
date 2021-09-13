import { LightningElement,api,wire } from 'lwc';
import displayAccounts from '@salesforce/apex/TaskController.displayAccounts';
import updateRecord from '@salesforce/apex/TaskController.updateRecord';
import { refreshApex } from '@salesforce/apex';
export default class UpdateTask extends LightningElement {
    @api currentRecordId;
	@api errorMessage;
    @wire(displayAccounts) accounts;
    handleUpdate(event){
        this.currentRecordId=event.target.value;
        console.log('@@currentRecordId@@@'+this.currentRecordId);
        updateRecord({
            accId:this.currentRecordId
        })
        .then(() => {
            console.log('SUCCESS');
            return refreshApex(this.accounts);
        })
        .catch((error) => {
            this.errorMessage=error;
			console.log('unable to update the record due to'+JSON.stringify(this.errorMessage));
        });
    }
    
}