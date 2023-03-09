import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="compass"
export default class extends Controller {
  static targets = ["compassCircle", "startBtn", "myPoint", "arrow"];


  connect() {
    console.log('je suis dans le controller stimulus')
    console.log(this.arrowTarget)
    console.log(this.compassCircleTarget)
    console.log(this.startBtnTarget)
    console.log(this.myPointTarget)
    this.pointDegree;
    this.compass

  }

  startCompass() {

      window.addEventListener("deviceorientationabsolute", this.handler, true);

  }

  handler(e) {
    this.compass = e.webkitCompassHeading || Math.abs(e.alpha - 360);
    this.compassCircleTarget.style.transform = `translate(-50%, -50%) rotate(${-this.compass}deg)`;

  }
}
