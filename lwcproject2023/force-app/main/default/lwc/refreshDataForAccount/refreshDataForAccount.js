import { LightningElement,api } from 'lwc';

//import the standard import statement first as best practice after that import custome import statements
//spring 2023 relese new module import
import {RefreshEvent} from 'lightning/refresh';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';

//Now import the custome import statement
import UpdateAccountDataa from '@salesforce/apex/AccountHandlercontroller.UpdateAccountData';


export default class RefreshDataForAccount extends LightningElement 
{
    @api recordId;

    async submitHandler()
    {
        let accName = this.refs.nameRef.value;
       // let accType = this.refs.typeRef.value;

        await UpdateAccountDataa
        ({
            Id : this.recordId,
            Name : this.accName
            //Type : this.accType
        });
        this.showToast();
        this.dispatchEvent(new RefreshEvent());
    }

    //After updating showtoast message
    showToast()
    {
        const evt = new ShowToastEvent
        ({
            title : "success",
            message : "Account Updated successfully",
            variant : "success"
        });
        this.dispatchEvent(evt);
    }

}