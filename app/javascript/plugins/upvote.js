export const upvote = () => {
  document.querySelectorAll(".like-bouton").forEach((likeBtn) => {
    likeBtn.addEventListener("click", (event) => {
      let counter = likeBtn.parentElement.parentElement.lastElementChild
      counter.innerText = parseInt(counter.innerText) + 1
      const boutonToShow = likeBtn.parentElement.nextElementSibling
      boutonToShow.classList.toggle("d-none");
      likeBtn.parentElement.classList.toggle("d-none");
    });
  });
}
