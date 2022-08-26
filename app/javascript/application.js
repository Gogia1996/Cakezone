//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_self
//= require_tree .


$(function() {
  $(window).on("scroll", function() {
    if($(window).scrollTop() > 120) {
      //bottom arrow at scroll
      $('.back-to-top').addClass('bottom');
    } else {
      //bottom arrow at top
      $('.back-to-top').removeClass('bottom');
    }
  });
  
});
