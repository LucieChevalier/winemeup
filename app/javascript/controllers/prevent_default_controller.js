import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="prevent-default"
export default class extends Controller {
  connect() {
    console.log("Coucou")
  }

  preventDefaultClick(event) {
    event.preventDefault()
  }
}
