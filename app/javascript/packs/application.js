import "bootstrap";

var checkBoxes = document.querySelectorAll(".checkbox_filter");
var field = document.querySelector(".toto");

for (const check of checkBoxes) {
  check.addEventListener ('change', function(){
    field.submit()
  })
};


// TESTING OF EVENTLISTENER TO ADD
var addbutton = document.querySelector(".adding_button");
var p = document.querySelector("p");
var text = document.getElementById("alternative_ingredients")
var tags = document.querySelectorAll(".my_tag");
var test = document.querySelector(".test_test");
 text.addEventListener ('keypress', (event) => {
  if (event.keyCode === 13) {
  p.insertAdjacentHTML("beforeend", "<div class='my_tag'>" + text.value + "</div>");
  text.value = "";
  test.insertAdjacentText("afterend", "My inserted text")
}
})



// var forms = document.querySelectorAll("form");

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
$( document ).ready(function() { $("#query").focus(); });
