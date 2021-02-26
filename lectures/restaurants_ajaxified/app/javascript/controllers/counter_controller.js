import { Controller } from "stimulus";

export default class extends Controller {
  static targets = [ 'count' ];

  // connect() {
  //   console.log(this.countTarget);
  // }

  connect() {
    setInterval(this.refresh, 5000);
  }

  // Sintaxe de ação do controller Stimulus
  // refresh(event) {

  // Sintade de função JavaScript
  refresh = () => {
    // Fazer uma requisição AJAX que nos retorne os restaurants
    // Atualizar o this.countTarget.innerText com o length dos restaurantes
    fetch('/restaurants', { headers: { accept: "application/json" } })
      .then(response => response.json())
      .then((data) => {
        // console.log(data);
        this.countTarget.innerText = data.restaurants.length;
      });
  }
}