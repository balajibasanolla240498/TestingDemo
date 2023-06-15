import { LightningElement,api } from 'lwc';

export default class DataFillerChildcomponent extends LightningElement 
{
    @api name;
    @api phone;
    @api country;

    handleInputChange(event)
    {
        const { name, value } = event.target;
        if (name === 'name') 
        {
            this.name = value;
        } 
        else if (name === 'phone') 
        {
            this.phone = value;
        } 
        else if (name === 'country') 
        {
            this.country = value;
        }
    }
    handlePassData()
    {
        const eventData = 
        {
            name: this.name,
            phone: this.phone,
            country: this.country
        };
        this.dispatchEvent(new CustomEvent('passdata', { detail: eventData }));
        this.name = '';
        this.phone = '';
        this.country = '';
    }
}