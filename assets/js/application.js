$(document).ready(function(){
  $(".brackets-name").hide();
  $(".brackets").hide();
  $(".brackets-occupation").hide();
  $(".dylan-lynch")
    .mouseover(function() {
    $(".brackets-name").fadeIn("slow")
  })
    .mouseleave(function() {
      $(".brackets-name").fadeOut("fast")
  });
    $(".occupation")
    .mouseover(function() {
    $(".brackets-occupation").fadeIn("slow")
  })
    .mouseleave(function() {
      $(".brackets-occupation").fadeOut("fast")
  });

  $(".github-black").mouseenter(function() {
    $(this).addClass("github-white")
    $(this).removeClass("github-black")
  }).mouseleave(function() {
    $(this).addClass("github-black")
    $(this).removeClass("github-white")
  });

$('.arrowBottom').click(function () {
    $('html, body').animate({scrollTop:$(document).height()}, 'slow');
    return false;
});

$('.arrowTop').click(function () {
    $('html, body').animate({scrollTop:0}, 'slow');
    return false;
});

$(window).scroll(function(){
    $(".arrowBottom").css("opacity", 1 - $(window).scrollTop() / 250); 
  });

});
   
