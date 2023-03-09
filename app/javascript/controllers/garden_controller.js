import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['container', 'garden', 'inputWidth', 'inputHeight']

  connect() {
    this.update()
    console.log('Hello!', this.element);
    console.log('Hello!', this.containerTarget);
    console.log('Hello!', this.gardenTarget);
    console.log('Hello!', this.inputWidthTarget);
    console.log('Hello!', this.inputHeightTarget);
  }

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
    console.log('update');
    this.containerWidth = this.containerTarget.offsetWidth;
    this.containerHeight = this.containerTarget.offsetHeight;
    const sizes = this.calcSizeGarden()
    this.gardenTarget.style.width = `${sizes.width}px`;
    this.gardenTarget.style.height = `${sizes.height}px`;
  }
}
