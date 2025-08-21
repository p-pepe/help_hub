import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.element.textContent = "Stimulus接続成功！"
  }
}

// import { Controller } from "@hotwired/stimulus"

// export default class extends Controller {
//   connect() {
//     console.log("Stimulus接続成功！");
//     this.element.innerHTML = "Stimulus接続成功！！";
//   }
// }