//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_self
//= require_tree .


$(document).ready(function(){
  $(".aboutheader").css('display', 'none');
  $("#aboutpage").click(function() {
    debugger;
  $(".aboutheader").css('display', 'block');
  });
  $("#appimages").click(function(){
    $(".appimg").show('1000');
    $(".cardimg , .webimg").hide('3000');
  });

  $("#webimages").click(function(){
    $(".webimg").show('1000');
    $(".cardimg , .appimg").hide('3000');
  });
});

