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

  let sfFavSubmit = document.getElementsByClassName("favorite-submit");
  sfFavSubmit[0].addEventListener("click", event => {
    event.preventDefault();
    submitListItem(event);
  });

  // adding new photos

  // --- your code here!


  const togglePhotoForm = (e) => {
    let form = document.getElementsByClassName("photo-form-container");
    form[0].classList.toggle('hidden')
  }

  let photoToggle = document.getElementsByClassName("photo-show-button");
  photoToggle[0].addEventListener("click", event => {
    event.preventDefault();
    togglePhotoForm(event);
  });

  const submitPhotoForm = (e) => {
    let input = document.getElementsByClassName("photo-url-input");
    let imgLink = input[0].value;
    input[0].value = "";

    const ul = document.getElementsByClassName("dog-photos")[0];
    const li = document.createElement('li');
    const img = document.createElement('img');
    img.src = imgLink;
    li.appendChild(img);
    ul.appendChild(li);
  };

  let photoSubmit = document.getElementsByClassName("photo-url-submit");
  photoSubmit[0].addEventListener("click", event => {
    event.preventDefault();
    submitPhotoForm(event);
  });


});
