import { LightningElement } from 'lwc';

export default class Slider extends LightningElement 
{
    val = 2;
    clicks = 0;

    handlerChange(event)
    {
        const targetValue = event.terget.value;

        const curEvent = new CustomEvent('sliderclicked', 
        {
            detail: 
            {
                count : targetValue,
                clicks : ++this.clicks
            }
        });
        this.dispatchEvent(curEvent);
    }
}