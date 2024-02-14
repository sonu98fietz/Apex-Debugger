import { LightningElement,track} from 'lwc';
import getAccountList from '@salesforce/apex/AccountList.findAll';
export default class WireAccountLstLwc extends LightningElement {
    @track lstAcc;
    showAccount = false;
    loadAccountDetails(){
        getAccountList().then(result => {this.lstAcc = result;
            this.showAccount = !this.showAccount;
        })
        .catch(error => {
            console.log(error);
        });
    }
}