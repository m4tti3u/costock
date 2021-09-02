
const scrollDownWithChevron = () => {
  const chevron = document.querySelector(".chevron");
  if (chevron) {
    chevron.addEventListener("click", (event) => {
      window.scroll({
        top: 650,
        behavior: 'smooth'
      });
    })
  }
};

export { scrollDownWithChevron };
