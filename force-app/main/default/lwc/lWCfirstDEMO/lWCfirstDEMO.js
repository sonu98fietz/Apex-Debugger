import { LightningElement } from 'lwc';
export default class TemplateLooping extends LightningElement {
    carList = ["Ford", "Audi", "Maruti", "Hyundai", "Mercedes"]
    get uniqueKey(){
        return Math.random();   
    }
}