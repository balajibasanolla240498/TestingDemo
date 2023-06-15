import { LightningElement } from 'lwc';

export default class ParentcomponentdataTable extends LightningElement 
{
    data = [];

  handleDataUpdate(event) 
  {
    const eventData = event.detail;
    this.data = [this.data, eventData];
  }

  get hasData() 
  {
    return this.data.length > 0;
  }
}