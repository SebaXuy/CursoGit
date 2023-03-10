/**
 * @description       : 
 * @author            : sebastian.y.raggio.-nd@disney.com
 * @group             : 
 * @last modified on  : 03-10-2023
 * @last modified by  : sebastian.y.raggio.-nd@disney.com
**/
import { LightningElement } from 'lwc';

export default class AccountFinder extends LightningElement {


    annualRevenue = null;

    handleChange(event) {
        this.annualRevenue = event.detail.value;
    }

    reset() {
        console.log('In reset');
        this.annualRevenue = null;
        console.log('annualRevenue: ',this.annualRevenue);
    }
}