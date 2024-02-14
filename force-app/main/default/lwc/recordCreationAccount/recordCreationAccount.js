import { LightningElement ,api,track} from 'lwc';
import getAccountList from '@salesforce/apex/AccountList.findAll';
import accName from '@salesforce/schema/Account.Name';
import accIndustry from '@salesforce/schema/Account.Industry';
import accPhone from '@salesforce/schema/Account.Phone';
export default class RecordCreationAccount extends LightningElement {
@api recordId;
@track selectedFields  =[accName,accIndustry,accPhone];
account_Name=accName;
account_Phone = accPhone;
account_Industry = accIndustry;
}