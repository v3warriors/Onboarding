import { LightningElement, wire, track } from 'lwc';
import { getRecord } from 'lightning/uiRecordApi';
import USER_ID from '@salesforce/user/Id'; //this is how you will retreive the USER ID of current in user.
import NAME_FIELD from '@salesforce/schema/User.Name';
export default class userDetails extends LightningElement {
     @track error ;
     @track name;
     @track type;
     @wire(getRecord, {
         recordId: USER_ID,
         fields: [NAME_FIELD]
       
     }) wireuser({
         error,
         data
     }) {
         if (error) {
            this.error = error ; 
         } else if (data) {
             this.name = data.fields.Name.value;
            
         }
        }}