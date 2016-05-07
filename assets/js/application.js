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
});
   
