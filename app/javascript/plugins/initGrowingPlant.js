export const initGrowingPlant = () => {
  const plantToGrow = document.querySelector(".logo-home-plant")
  if (plantToGrow) {
    plantToGrow.classList.toggle("growPlant");
  }
};

