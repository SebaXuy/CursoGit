/**
 * @description       : 
 * @author            : Sebastian.Y.Raggio.-ND@disney.com
 * @group             : 
 * @last modified on  : 12-08-2020
 * @last modified by  : Sebastian.Y.Raggio.-ND@disney.com
 * Modifications Log 
 * Ver   Date         Author                              Modification
 * 1.0   12-08-2020   Sebastian.Y.Raggio.-ND@disney.com   Initial Version
**/
import { LightningElement } from 'lwc';

export default class HelloWorld extends LightningElement {
    greeting = 'World';
    
    changeHandler(event) {
        this.greeting = event.target.value;
    }
}