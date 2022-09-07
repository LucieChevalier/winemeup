import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="prevent-default"
export default class extends Controller {

  preventDefaultClick(event) {
    event.preventDefault()
  }
}
