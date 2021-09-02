// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
import "chartkick/chart.js";
import AOS from "aos";
import 'aos/dist/aos.css';

// Internal imports, e.g:
import { initSelect2 } from '../components/init_select2';
import { changeNavbarOnScroll } from '../components/change_navbar';

// import { switchBidAsk } from '../components/switch_portfolio';

import { scrollDownWithChevron } from '../components/chevron_scroll';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  AOS.init();
  initSelect2();
  changeNavbarOnScroll();
  scrollDownWithChevron();
  // switchBidAsk();
  // console.log(document.querySelector("#new_collectible"));
  // document.querySelector("#new_collectible").addEventListener('submit', function(event){
  //   event.preventDefault();
  //   if ((document.querySelector("#select2-collectible_brand-container").title) === "Autre") {
  //     document.getElementById("brand-general").classList.add("d-none");
  //     document.getElementById("brand-personnalise").classList.remove("d-none");
  //   };
  // });
});
