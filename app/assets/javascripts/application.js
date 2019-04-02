   // This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

function myFunction() {
  var dots = document.getElementById("dots");
  var moreText = document.getElementById("more");
  var btnText = document.getElementById("myBtn");

  if (dots.style.display === "none") {
    dots.style.display = "inline";
    btnText.innerHTML = "Read more";
    moreText.style.display = "none";
  } else {
    dots.style.display = "none";
    btnText.innerHTML = "Read less";
    moreText.style.display = "inline";
  }
}




// $('[data-show="more"]').on('click', function(event) {
//  event.preventDefault();
//     if ( $(this).attr('more-collapse') === 'false' ) {
//      $(this).attr('more-collapse', 'true');
//      $(this).prev('.more-text').removeClass('hide');
//      $(this).text('less');
//     }  else {
//          $(this).text('more');
//          $(this).attr('more-collapse', 'false');
//          $(this).prev('.more-text').addClass('hide');
//     }
// });







// $(document).ready(function() {
//     // Configure/customize these variables.
//     var showChar = 400;  // How many characters are shown by default
//     var ellipsestext = "...";
//     var moretext = "Show more";
//     var lesstext = "Show less";


//     $('.more').each(function() {
//         var content = $(this).html();

//         if(content.length > showChar) {

//             var c = content.substr(0, showChar);
//             var h = content.substr(showChar, content.length - showChar);

//             var html = c + '<span class="moreellipses">' + ellipsestext+ '&nbsp;</span><span class="morecontent"><span>' + h + '</span>&nbsp;&nbsp;<a href="" class="morelink">' + moretext + '</a></span>';

//             $(this).html(html);
//         }

//     });

//     $(".morelink").click(function(){
//         if($(this).hasClass("less")) {
//             $(this).removeClass("less");
//             $(this).html(moretext);
//         } else {
//             $(this).addClass("less");
//             $(this).html(lesstext);
//         }
//         $(this).parent().prev().toggle();
//         $(this).prev().toggle();
//         return false;
//     });
// });






