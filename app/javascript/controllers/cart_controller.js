import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.observer = new MutationObserver(this.callback.bind(this))
    this.observer.observe(this.element, { childList: true, subtree: true })
  }

  disconnect() {
    this.observer.disconnect()
  }

  callback() {
    let canvas = bootstrap.Offcanvas.getOrCreateInstance(this.element)

    if (!canvas._isShown) {
      canvas.show()
    }
  }
}
