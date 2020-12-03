export function imgPreview () {
  const inputElement = document.getElementById('plant_photo'); // Selectionne l'input photo du formulaire

  inputElement.addEventListener("change", (event) => { // Ajoute un écouteur
    const file = document.getElementById('plant_photo').files[0]

      // if (!file.type.startsWith('image/')){ continue } // problème de syntaxe

    const img = document.createElement("img");
    img.classList.add("obj");
    img.file = file;
    img.id = "preview-img"

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
