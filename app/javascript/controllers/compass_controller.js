import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="compass"
export default class extends Controller {
  static targets = ["compassCircle", "output"];

  update(event) {
    this.compass = event.webkitCompassHeading || Math.abs(event.alpha - 360)
    this.compassCircleTarget.style.transform = `translate(-50%, -50%) rotate(${-this.compass}deg)`
  }
}
