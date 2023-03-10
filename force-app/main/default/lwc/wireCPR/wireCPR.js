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
import { CurrentPageReference } from 'lightning/navigation';
  
export default class WireCPR extends LightningElement {
  @wire(CurrentPageReference) pageRef;
  get currentPageRef() {
    return this.pageRef ? JSON.stringify(this.pageRef, null, 2) : '';
  }
}