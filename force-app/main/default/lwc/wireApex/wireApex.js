/**
 * @description       : 
 * @author            : Sebastian.Y.Raggio.-ND@disney.com
 * @group             : 
 * @last modified on  : 12-15-2020
 * @last modified by  : Sebastian.Y.Raggio.-ND@disney.com
 * Modifications Log 
 * Ver   Date         Author                              Modification
 * 1.0   12-15-2020   Sebastian.Y.Raggio.-ND@disney.com   Initial Version
**/
import { LightningElement, wire } from 'lwc';
import getAccountList from '@salesforce/apex/AccountController.getAccountList';
  
export default class WireApex extends LightningElement {
  accounts;
  error;
  
  @wire(getAccountList)
  wiredAccounts({ error, data }) {
    if(data) {
      this.accounts = data;
      this.error = undefined;
    } else if(error) {
      this.error = error;
      this.accounts = undefined;
    }
  }
}