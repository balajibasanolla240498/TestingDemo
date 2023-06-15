import { LightningElement } from 'lwc';

export default class AccountSearch extends LightningElement 
{
    searchText = '';
    searchaccountscontactHandler(event)
    {
        this.searchText = event.detail;
    } 
}