import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["card"]
  connect() {
    console.log("Hello from our first Stimulus controller")
  }

  hideCards(event){
    console.log(event)
    this.cardTarget.classList.toggle("d-none")
  }
}
