import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="edit"
export default class extends Controller {
  static targets = ["content"]

  displayForm() {
    this.contentTarget.classList.toggle("d-none")
  }
}
