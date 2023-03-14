import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="share"
export default class extends Controller {
  static values = { url: String }

  connect() {
    console.log(this.urlValue);
  }

  send() {
    console.log(navigator.share);
    if (navigator.share !== undefined) {
      navigator.share({
        title: 'see your garden',
        url: `${this.urlValue}`
      })
      .then(() => console.log('Successful share'))
      .catch((error) => console.log('Error sharing', error));
    }
  }
}
