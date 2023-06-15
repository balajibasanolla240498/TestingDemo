import { LightningElement ,api} from 'lwc';

export default class ChildFan extends LightningElement 
{
   @api percentage;
   get style() 
   {
    return `animation-duration: ${this.percentage}s`;   
   }
}