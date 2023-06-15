import LightningDataTable from 'lightning/datatable';
import customImage from './customImage.html';


export default class CustomeDataTable extends LightningDataTable 
{
    static customType = 
    {
        customImage:
        {
            template:customImage,
            typeAttributes:['title']

        }
    }
}