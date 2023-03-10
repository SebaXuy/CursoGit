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
export default class BikeCard extends LightningElement {
   name = 'Electra X4';
   description = 'A sweet bike built for comfort.';
   category = 'Mountain';
   material = 'Steel';
   price = '$2,700';
   pictureUrl = 'https://s3-us-west-1.amazonaws.com/sfdc-demo/ebikes/electrax4.jpg';
 }