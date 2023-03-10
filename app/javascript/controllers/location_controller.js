import { Controller } from "@hotwired/stimulus"


// Connects to data-controller="location"
export default class extends Controller {
  static targets = ["map", "lat", "lng"];

  connect() {
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
    const map = new google.maps.Map(this.mapTarget, {
      center: { lat, lng },
      zoom: 8
    });
    const marker = new google.maps.Marker({
      position: { lat, lng },
      map: map
    });
  }
}
