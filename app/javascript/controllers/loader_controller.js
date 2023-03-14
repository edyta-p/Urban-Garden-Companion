import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="loader"
export default class extends Controller {
  static targets = [ "percent" ]
  static values = { percent: Number }
  connect() {
    if (this.percentValue === 25) return;
    setTimeout(() => {
      this.percentTarget.style.width = `calc(${this.percentValue}% - 40px)`;
    }, 500);
  }
}
