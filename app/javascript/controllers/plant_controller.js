import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="plant"
export default class extends Controller {
  static targets = ["results"];
  connect() {
    console.log("Plant controller connected");
  }

  togglePlant(event) {
    console.log(event);
    const plantId = event.currentTarget.dataset.plantId;
    fetch(`/plants/${plantId}/plant`)
      .then(response => response.text())
      .then((data) => {
        console.log(data);
        this.resultsTarget.innerHTML = data;
      });
  }
}
