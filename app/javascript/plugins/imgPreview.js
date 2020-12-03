export const imgPreview = () => {
  const plantPhoto = document.getElementById('plant_photo'); // Selectionne l'input photo du formulaire

  if (plantPhoto) {
    plantPhoto.addEventListener("change", (event) => { // Ajoute un écouteur
      const file = document.getElementById('plant_photo').files[0]

        // if (!file.type.startsWith('image/')){ continue } // problème de syntaxe

      const img = document.createElement("img");
      img.classList.add("obj");
      img.file = file;
      img.id = "preview-img"

      const preview = document.getElementById('photo-new-plant')
      if (document.getElementById('icone-add-photo')){
        var img_nested1 = document.getElementById('icone-add-photo')
        var img_nested2 = document.getElementById('icone-app-photo')
        preview.removeChild(img_nested1)
        preview.removeChild(img_nested2)
        preview.appendChild(img)
      } else {
        preview.appendChild(img)
      }
      const reader = new FileReader();
      reader.onload = (function(aImg) { return function(e) { aImg.src = e.target.result; }; })(img);
      reader.readAsDataURL(file);
    });
  }
}
