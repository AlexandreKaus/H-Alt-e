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

 text.addEventListener ('keypress', (event) => {
  if (event.keyCode === 13) {
  p.innerHTML +=  "<div class='my_tag'>" + text.value + "</div>";
  my_list.insertAdjacentHTML("beforeend", "<input type='hidden' name='ingredients_list[]' value='" + text.value + "' />");
  text.value = "";
}
})

 // ADDING ALT_AT
var q = document.getElementById("alt_placeholder");
var text_alt = document.getElementById("alternative_alt_at");
var my_list_alt = document.getElementById("alternative_alt_list");

text_alt.addEventListener ('keypress', (event) => {
  if (event.keyCode === 13) {
  q.innerHTML +=  "<div class='my_tag'>" + text_alt.value + "</div>";
  my_list_alt.insertAdjacentHTML("beforeend", "<input type='hidden' name='alt_list[]' value='" + text_alt.value + "' />");
  text_alt.value = "";

}
})


// var forms = document.querySelectorAll("form");[]

// for (const form of forms) {
//   form.addEventListener ('submit', function(){
//     Rails.fire(form, 'submit');
//   })
// }


// $(document).ready(function(){

//   /* 1. Visualizing things on Hover - See next part for action on click */
//   $('#stars li').on('mouseover', function(){
//     var onStar = parseInt($(this).data('value'), 10); // The star currently mouse on

//     // Now highlight all the stars that's not after the current hovered star
//     $(this).parent().children('li.star').each(function(e){
//       if (e < onStar) {
//         $(this).addClass('hover');
//       }
//       else {
//         $(this).removeClass('hover');
//       }
//     });

//   }).on('mouseout', function(){
//     $(this).parent().children('li.star').each(function(e){
//       $(this).removeClass('hover');
//     });
//   });


//   /* 2. Action to perform on click */
//   $('#stars li').on('click', function(){
//     var onStar = parseInt($(this).data('value'), 10); // The star currently selected
//     var stars = $(this).parent().children('li.star');

//     for (i = 0; i < stars.length; i++) {
//       $(stars[i]).removeClass('selected');
//     }

//     for (i = 0; i < onStar; i++) {
//       $(stars[i]).addClass('selected');
//     }

//     // JUST RESPONSE (Not needed)
//     var ratingValue = parseInt($('#stars li.selected').last().data('value'), 10);
//     var msg = "";
//     if (ratingValue > 1) {
//         msg = "Thanks! You rated this " + ratingValue + " stars.";
//     }
//     else {
//         msg = "We will improve ourselves. You rated this " + ratingValue + " stars.";
//     }
//     responseMessage(msg);

//   });


// });


// function responseMessage(msg) {
//   $('.success-box').fadeIn(200);
//   $('.success-box div.text-message').html("<span>" + msg + "</span>");
// }
