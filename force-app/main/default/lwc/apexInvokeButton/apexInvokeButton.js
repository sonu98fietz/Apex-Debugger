import { LightningElement,api } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
export default class ApexInvokeButton extends LightningElement {

    @api recordId;
    @api invoke() {
        this.showToast();
    }
    // displays the record Id in the toast
    showToast() {
        const event = new ShowToastEvent({
            title: "Notice",
            message: "Testing " + this.recordId,
            messageData: "",
            variant: "warning",
            mode: "pester"
        });
        this.dispatchEvent(event);
    }
}