import { LightningElement,track } from 'lwc';

const COLUMNS = 
[
    { label: 'Name', fieldName: 'name' },
    { label: 'Phone', fieldName: 'phone' },
    { label: 'Country', fieldName: 'country' }
];

export default class PersonTableParentComponent extends LightningElement 
{

    @track columns = COLUMNS;
    @track data = [];

    handlePassData(event) 
    {
        const { name, phone, country } = event.detail;
        const newData = [...this.data, { name, phone, country }];
        this.data = newData;
    }    
}