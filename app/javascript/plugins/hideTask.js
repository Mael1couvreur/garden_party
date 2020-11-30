export const hideTask = () => {
  document.querySelectorAll(".btn-task").forEach((btn) => {
    btn.addEventListener("click", (event) => {
      event.currentTarget.parentElement.parentElement.parentElement.classList.toggle("hide-task");
    });
  });
}
