import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["infos1", "infos2", "infos3", "list"]

  change(event) {
    this.listTarget.querySelector(".active").classList.remove("active")
    event.target.classList.add("active")
    document.querySelector(".tab-active").classList.remove("tab-active")
    document.getElementById(`${event.target.id}-infos`).classList.add("tab-active")
  }
}
