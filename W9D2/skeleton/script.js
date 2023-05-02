document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  // --- your code here!
  const submitListItem = (e) => {

    let input = document.getElementsByClassName("favorite-input");
    let sfPlaceInput = input[0].value;
    input[0].value = "";

    const ul = document.getElementById("sf-places");
    const li = document.createElement('li');
    li.textContent = sfPlaceInput;
    ul.appendChild(li);
  }

  let buttons = document.getElementsByClassName("favorite-submit");
  buttons[0].addEventListener("click", event => {
    event.preventDefault();
    submitListItem(event);
  });

  // adding new photos

  // --- your code here!



});
