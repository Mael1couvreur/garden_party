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
import { initChatroomCable } from "../channels/chatroom_channel";
import { upvote } from "../plugins/upvote";
import { hideTask } from "../plugins/hideTask";
import { dislike } from "../plugins/dislike";
import { imgPreview } from "../plugins/imgPreview";


const inputElement = document.getElementById('plant_photo');
// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {
  initChatroomCable();
  upvote();
  dislike();
  hideTask();
  imgPreview();

});

// Preview of upload photo

// function imgPreview () {

//   inputElement.addEventListener("change", (event) => {
//     const file = document.getElementById('plant_photo').files[0]
//     console.log(file)

//       // if (!file.type.startsWith('image/')){ continue } // problème de syntaxe

//     const img = document.createElement("img");
//     img.classList.add("obj");
//     img.file = file;
//     img.id = "preview-img"

//     const preview = document.getElementById('preview')
//     if (document.getElementById('preview-img')){
//       var img_nested = document.getElementById('preview-img')
//       preview.removeChild(img_nested)
//       preview.appendChild(img)
//     } else {
//       preview.appendChild(img)
//     }
//     const reader = new FileReader();
//     reader.onload = (function(aImg) { return function(e) { aImg.src = e.target.result; }; })(img);
//     reader.readAsDataURL(file);
//   });
// }
