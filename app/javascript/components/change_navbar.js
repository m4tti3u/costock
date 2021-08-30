const changeNavbarOnScroll = () => {
  const navbar = document.querySelector(".navbar-lewagon");
  document.addEventListener("scroll", (event) => {
    const scrollPosition = window.scrollY
    console.log(scrollPosition)
    if (scrollPosition > 80)
    navbar.classList.add("scrolled")
    else
      navbar.classList.remove("scrolled")
  });
};

export { changeNavbarOnScroll };
