
const scrollDownWithChevron = () => {
  const chevron = document.querySelector(".chevron");
  chevron.addEventListener("click", (event) => {
    window.scroll({
      top: 720,
      behavior: 'smooth'
    });
  })
};

export { scrollDownWithChevron };
