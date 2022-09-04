import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search-events"
export default class extends Controller {
  static targets = ["form", "input", "list"]

  // Cette function est super important afin de voir si il n'y a aucun problem
  // connect() {
  //   console.log('Jello')
  //   console.log(this.formTarget)
  //   console.log(this.inputTarget)
  //   console.log(this.listTarget)
  // }

  update() {
    // console.log(event) pour verifier que le keyup fonctionne bien
    // console.log(query.value);
     const url = `${this.formTarget.action}?query=${this.inputTarget.value}`
     fetch(url, {headers: {"Accept": "text/plain"}})
       .then(response => response.text())
       .then((data) => {
         this.listTarget.outerHTML = data
        // console.log(data)
    })
  }
}
