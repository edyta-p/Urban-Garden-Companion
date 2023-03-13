import { Controller } from "@hotwired/stimulus"


// Connects to data-controller="location"
export default class extends Controller {
  static targets = ["map", "lat", "lng", 'form'];

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

  }
}
