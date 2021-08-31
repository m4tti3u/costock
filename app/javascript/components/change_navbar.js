const changeNavbarOnScroll = () => {
  const navbar = document.querySelector(".navbar-lewagon");
  document.addEventListener("scroll", (event) => {
    const scrollPosition = window.scrollY
    if (scrollPosition > 70)
    navbar.classList.add("scrolled")
    else
      navbar.classList.remove("scrolled")
  });
};

export { changeNavbarOnScroll };
