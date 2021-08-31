const switchBidAsk = () => {
  const targetDiv = document.querySelector(".bids");
  const btnBid = document.querySelector(".bid-switch");
  btnBid.addEventListener("click", (event) => {
    event.preventDefault();
    if (targetDiv.style.display !== "none") {
      targetDiv.style.display = "none";
    } else {
      targetDiv.style.display = "block";
    }
  });

  const targetDiv2 = document.querySelector(".asks");
  const btnAsk = document.querySelector(".ask-switch");
  btnAsk.addEventListener("click", (event) => {
    event.preventDefault();
    if (targetDiv2.style.display !== "none") {
      targetDiv2.style.display = "none";
    } else {
      targetDiv2.style.display = "block";
    }
  });
  };

export { switchBidAsk };
