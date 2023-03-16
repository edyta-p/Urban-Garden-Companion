import { Controller } from "@hotwired/stimulus"


// Connects to data-controller="plants"
export default class extends Controller {
  static targets = ['button', 'checkbox', 'form']
  connect() {
    console.log('I am here');
    console.log(this.buttonTarget);
    console.log(this.checkboxTarget);
  }

  checkValues() {
    console.log(this.buttonTarget);
    console.log(this.formTarget['garden[plant_categories][]']);
    // if (['Leaf plants', 'Flowers', 'Aromatics', 'Vegetables', 'Fruits'].includes(this.formTarget['garden[plant_categories][]'].value)) {
    //   this.buttonTarget.disabled = false;
    // } else {
    //   this.buttonTarget.disabled = true;
    // }
    if (['Leaf plants', 'Flowers', 'Aromatics', 'Vegetables', 'Fruits'].includes(this.checkboxTarget.value)) {
      this.buttonTarget.disabled = false;
    } else {
      this.buttonTarget.disabled = true;
    }
  }
}
