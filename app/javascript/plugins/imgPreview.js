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

<<<<<<< HEAD
    const preview = document.getElementById('photo-new-plant')
    if (document.getElementById('icone-app-photo')){
      var img_nested = document.getElementById('icone-app-photo')
      preview.removeChild(img_nested)
      preview.removeChild(img_nested)
      preview.appendChild(img)
    } else {
      preview.appendChild(img)
    }
    const reader = new FileReader();
    reader.onload = (function(aImg) { return function(e) { aImg.src = e.target.result; }; })(img);
    reader.readAsDataURL(file);
  });
=======
      const preview = document.getElementById('preview')
      if (document.getElementById('preview-img')){
        var img_nested = document.getElementById('preview-img')
        preview.removeChild(img_nested)
        preview.appendChild(img)
      } else {
        preview.appendChild(img)
      }
      const reader = new FileReader();
      reader.onload = (function(aImg) { return function(e) { aImg.src = e.target.result; }; })(img);
      reader.readAsDataURL(file);
    });
  }
>>>>>>> 5276c77773f0283b9a7d91d9ea52f2f2c0ff01b2
}
