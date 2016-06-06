$(document).ready(function(){

$(".dylan-lynch").hover(function(){
  $('.brackets-name').addClass("name-occupation-hovered")
}, function() {
  $('.brackets-name').removeClass("name-occupation-hovered")
});

$(".occupation-container").hover(function(){
  $(".brackets-occupation").addClass("name-occupation-hovered")
}, function() {
  $(".brackets-occupation").removeClass("name-occupation-hovered")
});

  $(".github-black").hover(function() {
    $(this).addClass("github-white", "slow")
    $(this).removeClass("github-black", "slow")
  }).mouseleave(function() {
    $(this).addClass("github-black", "slow")
    $(this).removeClass("github-white", "slow")
  });

$('.arrowBottomAbout').click(function () {
    $('html, body').animate({scrollTop:$(document).height() - 630}, 'slow');
    return false;
});

$('.arrowTopAbout').click(function () {
    $('html, body').animate({scrollTop:0}, 'slow');
    return false;
});

$(".firstProject").click(function() {
  $("html, body").animate({scrollTop:$(document).height() - 2090}, 'slow');
  return false;
});

$(".secondProject").click(function() {
  $("html, body").animate({scrollTop:$(document).height() - 1290}, 'slow');
  return false;
});

$(".thirdProject").click(function() {
  $("html, body").animate({scrollTop:$(document).height() - 400}, 'slow');
  return false;
});

$(window).scroll(function(){
    $(".arrowBottomAbout").css("opacity", 1 - $(window).scrollTop() / 250); 
    $(".navbar").css("opacity", 0.7)
    $(".navbar").css("background-color", "grey")
  });

});
   
