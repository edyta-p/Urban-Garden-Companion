import { Controller } from "@hotwired/stimulus"


// Connects to data-controller="location"
export default class extends Controller {
  static targets = ["map", "lat", "lng", "location","climate","form", 'button' ];

  geo() {
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(this.showPosition.bind(this));
    } else {
      alert("Geolocation is not supported by this browser.");
    }
  }

  showPosition(position) {
    const lat = position.coords.latitude;
    const lng = position.coords.longitude;
    this.latTarget.innerHTML = lat;
    this.lngTarget.innerHTML = lng;

    if (lat > 20 && lat < 30) {
      this.formTarget['garden[climate]'].value = 'Warm';
    }
    else if (lat > 30 && lat < 60) {
      this.formTarget['garden[climate]'].value = 'Temperate';
    }
    else {
      this.formTarget['garden[climate]'].value = 'Cold';
    }
    this.checkValues()
  }
  update() {
    this.checkValues()
  }

  checkValues() {
    console.log("toti");
    console.log(this.formTarget['garden[climate]'].value);
    if  (["Cold", "Temperate", "Warm"].includes(this.formTarget['garden[climate]'].value)) {
      this.buttonTarget.disabled = false
    } else {
      this.buttonTarget.disabled = true
    }
  }
}
