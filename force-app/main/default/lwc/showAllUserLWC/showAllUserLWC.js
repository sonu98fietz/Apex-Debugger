import { LightningElement, track, wire } from 'lwc';
import getUserList from '@salesforce/apex/currentUserInfo.fetchUser';

export default class ShowAllUserLWC extends LightningElement {

@track users;
@track userDetailsLoad = false;
    handleLoad() {
        getUserList()
            .then(result => {
                this.users = result;
                this.userDetailsLoad = true
            })
            .catch(error => {
                console.error(error)
            });
    }
}