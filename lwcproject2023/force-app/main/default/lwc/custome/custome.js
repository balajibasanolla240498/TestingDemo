import LightningDataTable from 'lightning/datatable';
import image from './image.html';

export default class Custome extends LightningDataTable 
{
    static customeTypes =
    {
        image:
        {
            template:image,
            typeAttributes:['title']
        }
    }
}