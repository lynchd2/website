$(document).ready(function(){
  /*
  $(".brackets-name").hide();
  $(".brackets-occupation").hide();
  $(".dylan-lynch")
    .mouseover(function() {
    $(".brackets-name").fadeIn("slow")
  })
    .mouseleave(function() {
      $(".brackets-name").fadeOut("fast")
  });
    $(".web-dev")
    .mouseover(function() {
    $(".brackets-occupation").fadeIn("slow")
  })
    .mouseleave(function() {
      $(".brackets-occupation").fadeOut("fast")
  });
*/

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
  $("html, body").animate({scrollTop:$(document).height() - 1850}, 'slow');
  return false;
});

$(".secondProject").click(function() {
  $("html, body").animate({scrollTop:$(document).height() - 1050}, 'slow');
  return false;
});

$(".thirdProject").click(function() {
  $("html, body").animate({scrollTop:$(document).height() - 1000}, 'slow');
  return false;
});

$(window).scroll(function(){
    $(".arrowBottomAbout").css("opacity", 1 - $(window).scrollTop() / 250); 
  });

});
   
