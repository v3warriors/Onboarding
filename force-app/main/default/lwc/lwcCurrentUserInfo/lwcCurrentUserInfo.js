import { LightningElement, wire } from 'lwc';
import Id from '@salesforce/user/Id';

export default class lwcCurrentUserInfo extends LightningElement {
    
    userId = Id;
}