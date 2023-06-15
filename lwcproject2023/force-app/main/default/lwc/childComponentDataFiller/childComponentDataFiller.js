import { LightningElement } from 'lwc';

export default class ChildComponentDataFiller extends LightningElement 
{
    name;
    phone;
    country;

    handleButtonClick()
    {
        const eventData=
        {
            name : this.name,
            phone : this.phone,
            country : this.country
        };

        //create an event to pass data from here to parent component
        const event = new CustomEvent('dataUpdateEvent',
        {
            detail : eventData
        });
        //dispatchthe event
        this.dispatchEvent(event);
    }
}