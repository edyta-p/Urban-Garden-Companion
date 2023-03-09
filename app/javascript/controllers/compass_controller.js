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
    navigator.geolocation.getCurrentPosition(this.locationHandler);
    this.isIOS = !(
    navigator.userAgent.match(/(iPod|iPhone|iPad)/) &&
    navigator.userAgent.match(/AppleWebKit/)
  );
  }

  startCompass() {
    if (this.isIOS) {
      DeviceOrientationEvent.requestPermission()
        .then((response) => {
          if (response === "granted") {
            window.addEventListener("deviceorientation", this.handler, true);
          } else {
            alert("has to be allowed!");
          }
        })
        .catch(() => alert("not supported"));
    } else {
      window.addEventListener("deviceorientationabsolute", this.handler, true);
    }
  }

  handler(e) {
    this.compass = e.webkitCompassHeading || Math.abs(e.alpha - 360);
    this.compassCircleTarget.style.transform = `translate(-50%, -50%) rotate(${-this.compass}deg)`;

    if (
      (this.pointDegree < Math.abs(this.compass) && this.pointDegree + 15 > Math.abs(this.compass)) ||
      this.pointDegree > Math.abs(this.compass + 15) || this.pointDegree < Math.abs(this.compass)
      )
      {
        this.myPointTarget.style.opacity = 0;
      } else if (this.pointDegree) {
       this.myPointTarget.style.opacity = 1;
      }

  }


locationHandler(position) {
  const { latitude, longitude } = position.coords;
  this.pointDegree = this.calcDegreeToPoint(latitude, longitude);

  if (this.pointDegree < 0) {
    this.pointDegree = this.pointDegree + 360;
  }
}

 calcDegreeToPoint(latitude, longitude) {

  const point = {
    lat: 90,
    lng: 0,
  };

  const phiK = (point.lat * Math.PI) / 180.0;
  const lambdaK = (point.lng * Math.PI) / 180.0;
  const phi = (latitude * Math.PI) / 180.0;
  const lambda = (longitude * Math.PI) / 180.0;
  const psi =
    (180.0 / Math.PI) *
    Math.atan2(
      Math.sin(lambdaK - lambda),
      Math.cos(phi) * Math.tan(phiK) -
        Math.sin(phi) * Math.cos(lambdaK - lambda)
    );
  return Math.round(psi);
}
}
