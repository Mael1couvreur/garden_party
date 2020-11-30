export const dislike = () => {
  document.querySelectorAll(".dislike-bouton").forEach((dislikeBtn) => {
    dislikeBtn.addEventListener("click", (event) => {
      let counter = dislikeBtn.parentElement.parentElement.lastElementChild
      counter.innerText = parseInt(counter.innerText) - 1
      const boutonToShow = dislikeBtn.parentElement.previousElementSibling
      boutonToShow.classList.toggle("d-none");
      dislikeBtn.parentElement.classList.toggle("d-none");
    });
  });
}
