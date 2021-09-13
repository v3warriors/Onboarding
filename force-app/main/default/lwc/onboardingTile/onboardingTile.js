import { LightningElement, api, track} from 'lwc';
import ID_FIELD from '@salesforce/schema/Employee__c.Name';
import ONBOARDING_FIELD from '@salesforce/schema/Employee__c.Onboarding_End_Date__c';
import { refreshApex } from '@salesforce/apex';

export default class OnboardingTile extends LightningElement {

    @api statusRecord;
    @track objectApi='Employee__c';
    fields = [ID_FIELD, ONBOARDING_FIELD];




    handleDetails(){
        
    }

    handleOpen() {
        console.log(this.statusRecord.Name)
        
        const selectEvent = new CustomEvent('statusview', {
            detail: this.statusRecord.Id
        });
        this.dispatchEvent(selectEvent);
    }



    @track openmodel = false;
    openmodal() {
        this.openmodel = true
    }
    closeModal() {
        this.openmodel = false
    } 
    saveMethod() {
        this.closeModal();
        
        
        
    }
}