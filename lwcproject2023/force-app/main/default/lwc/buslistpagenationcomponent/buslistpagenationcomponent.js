import { LightningElement,track } from 'lwc';
//import GetBusController from '@salesforce/apex/busSearchComponent.GetBusData';

export default class Buslistpagenationcomponent extends LightningElement {

    
    @track value;

    HandleChange2(event){
        
         this.value = event.target.value;
    }

}