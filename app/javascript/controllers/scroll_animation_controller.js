import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="scroll-animation"
export default class extends Controller {

  static targets = ["itemscard"]

  animText() {
    for (let i = 0; i < this.itemscardTargets.length; i++) {
        if (this.itemscardTargets[i].getBoundingClientRect().y <= 650) {
          this.itemscardTargets[i].children[0].children[1].style.transform = "translateY(0px)";
          this.itemscardTargets[i].children[0].children[1].style.opacity = 1;
        } else {
          this.itemscardTargets[i].children[0].children[1].style.transform = "translateY(50px)";
          this.itemscardTargets[i].children[0].children[1].style.opacity = 0;
        }
    }
  }
}
