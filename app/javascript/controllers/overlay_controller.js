import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["overlay", "filter"];
  connect() {
    console.log("Plant controller connected");
  }

  openOverlay(event) {
    console.log(event);
    const plantId = event.currentTarget.dataset.plantId;
    fetch(`/plants/${plantId}/plant`)
      .then(response => response.text())
      .then((data) => {
        this.overlayTarget.classList.add("active");
        this.overlayTarget.innerHTML = data;
        this.filterTarget.classList.add("active");
        document.body.classList.add("overflow-hidden");
      });
  }

  closeOverlay() {
    this.overlayTarget.innerHTML = "";
    this.overlayTarget.classList.remove("active");
    this.filterTarget.classList.remove("active");
    document.body.classList.remove("overflow-hidden");

  }
}
