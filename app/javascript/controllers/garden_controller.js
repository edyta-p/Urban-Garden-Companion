import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['container', 'garden', 'inputWidth', 'inputHeight', 'form', 'button']

  connect() {

    // this.update()
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
    console.log(this.inputWidthTarget.value)

    this.containerWidth = this.containerTarget.offsetWidth;
    this.containerHeight = this.containerTarget.offsetHeight;
    const sizes = this.calcSizeGarden()
    this.gardenTarget.style.width = `${sizes.width}px`;
    this.gardenTarget.style.height = `${sizes.height}px`;
    this.checkValues();
  }

  categoryUpdate() {
    console.log('categoryUpdate');
    this.inputWidthTarget.placeholder = '0';
    this.inputHeightTarget.placeholder = '0';
    if (this.formTarget['garden[category]'].value === 'windowsill') {
      this.inputWidthTarget.value = 100;
      this.inputHeightTarget.value = 20;
    } else if (this.formTarget['garden[category]'].value === 'balcony') {
      this.inputWidthTarget.value = 300;
      this.inputHeightTarget.value = 100;
    } else {
      this.inputWidthTarget.value = 800;
      this.inputHeightTarget.value = 400;
    };
    this.update()
  }

  checkValues() {
    console.log("toti");
    console.log(this.formTarget['garden[category]'].value);
    console.log(this.formTarget['garden[category]']);
    console.log('should be thisCategoryTarget');
    // console.log(this.inputCategoryTarget.value);
    console.log('should be thisWidthTarget');
    console.log(this.inputWidthTarget.value);
    if (this.inputWidthTarget.value > 0 && this.inputHeightTarget.value > 0 && ["balcony", "windowsill", "terrace"].includes(this.formTarget['garden[category]'].value)) {
      this.buttonTarget.disabled = false
    } else {
      this.buttonTarget.disabled = true
    }
  }
}
