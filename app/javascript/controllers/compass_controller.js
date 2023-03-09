import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="compass"
export default class extends Controller {
  static targets = ["compassCircle", "CompassIntput"];

  update(event) {
    this.compass = event.webkitCompassHeading || Math.abs(event.alpha - 360)
    this.compassCircleTarget.style.transform = `translate(-50%, -50%) rotate(${-this.compass}deg)`
     if (this.compass >= 0 || this.compass > 45) {
      this.compassInputTarget.value = "N"
    } else if (this.compass <= 90 || this.compass > 45){
      this.compassInputTarget.value = "E"
    } else if (this.compass <= 180 || this.compass > 90){
      this.compassInputTarget.value = "S"
    }else if (this.compass <= 360 || this.compass > 180){
      this.compassInputTarget.value = "W"
    }
  }
}

// if (this.compass >= 360 || this.compass < 45) {
//   this.compassInputTarget.value = "N"
// } else if (this.compass >= 45 && this.compass < 135) {
//   this.compassInputTarget.value = "E"
// } else if (this.compass >= 135 && this.compass < 225) {
//   this.compassInputTarget.value = "S"
// } else {
//   this.compassInputTarget.value = "W"
// }
// }
// }
