import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="edit"
export default class extends Controller {
  static targets = ["content", "retour"]

  // connect() {
  //   console.log("Hello")
  // }

  displayForm() {
    // this.infoTarget.textContent="Je ne souhaite plus participer"
    this.contentTarget.classList.toggle("d-none")
    this._scrollToBottom()
  }

  undisplayForm() {
    // this.infoTarget.textContent="Je ne souhaite plus participer"
    this.contentTarget.classList.toggle("d-none")
    this._scrollToBottom()
  }


  _scrollToBottom() {
    window.scrollTo(0, document.body.scrollHeight);
  }
}
