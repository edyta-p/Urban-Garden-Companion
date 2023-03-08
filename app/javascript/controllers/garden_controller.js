import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="garden"
export default class extends Controller {
  static targets = ['container', 'garden', 'inputWidth', 'inputHeight']

  calcSizeGarden() {
    const q1 = this.containerWidth / this.inputWidthTarget.value
    const q2 = this.containerHeight / this.inputHeightTarget.value

    const q = q1 >= q2 ? q2 : q1
    return {
      width: this.inputWidthTarget.value * q,
      height: this.inputHeightTarget.value * q
    }
  }

  update() {
    this.containerWidth = this.containerTarget.offsetWidth;
    this.containerHeight = this.containerTarget.offsetHeight;
    const sizes = this.calcSizeGarden()
    this.gardenTarget.style.width = `${sizes.width}px`;
    this.gardenTarget.style.height = `${sizes.height}px`;
  }

  connect() {
    this.update()
  }
}
