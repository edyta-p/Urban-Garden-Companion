import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="compass"
export default class extends Controller {
  static targets = ["compassCircle", "input", "text", "button"];

  update(event) {
    this.compass = event.webkitCompassHeading || Math.abs(event.alpha - 360);

    console.log(this.compass);
    this.compassCircleTarget.style.transform = `translate(-50%, -50%) rotate(${-this.compass}deg)`;
    console.log(this.compass);
    console.log("test");

    if (this.compass < 45 || this.compass > 260) {
      this.inputTarget.value = "N";
      this.textTarget.innerText = "North";
    } else if (this.compass > 45 && this.compass < 120) {
      this.inputTarget.value = "E";
      this.textTarget.innerText = "East";
    } else if (this.compass < 230 && this.compass > 120) {
      this.inputTarget.value = "S";
      this.textTarget.innerText = "South";
      console.log("S");
    } else if (this.compass < 260 && this.compass > 230) {
      this.inputTarget.value = "W";
      this.textTarget.innerText = "West";
    }
  }

  connect() {
    this.inputTarget.value = "S";
    this.textTarget.innerText = "South";

    console.log(this.inputTarget);
  }
}
