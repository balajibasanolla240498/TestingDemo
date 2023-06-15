import { LightningElement } from 'lwc';

export default class AccountSearchFrom extends LightningElement 
{
    SearchText = ' '; //variable or propertie of this component


    //this method get the value from input box
    accountnamechangeHandler(event)
    {
        this.SearchText = event.target.value;
    }

    //this method is button functionality
    searchClickHandler()
    {
        //console.log(this.SearchText);

        //declare the event name and pass data here to parent component
        const event = new CustomEvent('searchaccountcontacts',{detail:this.SearchText});

        //dispatch the event
        this.dispatchEvent(event);

    }
}