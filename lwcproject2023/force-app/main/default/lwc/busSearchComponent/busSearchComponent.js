import { LightningElement,wire,api,track } from 'lwc';
import getBuses from '@salesforce/apex/busSearchComponent.fetchBuses';

export default class BusSearchComponent extends LightningElement {

    @api name;
    @track buses;
    @track data;
    @wire(getBuses,{

        Keysearch:'$name'
    }) 

    
    wirerecord({data,error}){
        if(data){
            this.buses = data;
        }
    }
    
}