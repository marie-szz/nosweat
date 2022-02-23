import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  updateNavbar() {
    if (window.scrollY >= 480) {
      this.element.classList.add("navbar-lewagon-blue")
    } else {
      this.element.classList.remove("navbar-lewagon-blue")
    }
  };
}
