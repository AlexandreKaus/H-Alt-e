import "bootstrap";

$( document ).ready(function() { $("#query").focus(); });

// AUTO-UPDATE FILTER
var checkBoxes = document.querySelectorAll(".checkbox_filter");
var field = document.querySelector(".toto");

for (const check of checkBoxes) {
  check.addEventListener ('change', function(){
    field.submit()
  })
};

// ADDING INGREDIENTS
var p = document.getElementById("ingredients_placeholder");
var text = document.getElementById("alternative_ingredients");
var my_list = document.getElementById("alternative_ingredients_list");
const clearIngredients = () => {
  text.value =  '';
}
window.onload = clearIngredients
 text.addEventListener ('keypress', (event) => {
  if (event.keyCode === 13) {
  p.innerHTML +=  "<div class='my_tag tag_ingredient'>" + text.value + "</div>";
  // my_list.insertAdjacentHTML("beforeend", "<input type='hidden' name='ingredients_list[]' value='" + text.value + "' />");
  text.value = "";
  document.querySelectorAll(".my_tag").forEach((element) => {
    element.addEventListener("click", (event) => {
      event.target.remove();
  })

 })

}
})

document.querySelector(".new_alternative").addEventListener('submit', (event) => {
document.querySelectorAll(".tag_ingredient").forEach((element) => {
   my_list.insertAdjacentHTML("beforeend", "<input type='hidden' name='ingredients_list[]' value='" + element.innerText + "' />");
 })
})

 // ADDING ALT_AT
var q = document.getElementById("alt_placeholder");
var text_alt = document.getElementById("alternative_alt_at");
var my_list_alt = document.getElementById("alternative_alt_list");
const clearAlt = () => {
  text_alt.value =  '';
}
window.onload = clearAlt
 text_alt.addEventListener ('keypress', (event) => {
  if (event.keyCode === 13) {
  q.innerHTML +=  "<div class='my_tag tag_alt'>" + text_alt.value + "</div>";
  text_alt.value = "";
  document.querySelectorAll(".tag_alt").forEach((element) => {
    element.addEventListener("click", (event) => {
      event.target.remove();
  })

 })
}
})

document.querySelector(".new_alternative").addEventListener('submit', (event) => {
document.querySelectorAll(".tag_alt").forEach((element) => {
   my_list.insertAdjacentHTML("beforeend", "<input type='hidden' name='alt_list[]' value='" + element.innerText + "' />");
 })
})
