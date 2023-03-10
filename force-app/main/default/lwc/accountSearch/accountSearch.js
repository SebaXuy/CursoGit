/**
 * @description       : 
 * @author            : sebastian.y.raggio.-nd@disney.com
 * @group             : 
 * @last modified on  : 12-09-2022
 * @last modified by  : sebastian.y.raggio.-nd@disney.com
**/
import { LightningElement } from 'lwc';
export default class AccountSearch extends LightningElement {
    numberOfEmployees = null;
    handleChange(event) {
        this.numberOfEmployees = event.detail.value;
    }
    reset() {
        this.numberOfEmployees = null;
    }
}