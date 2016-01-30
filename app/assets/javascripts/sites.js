
$(document).ready(function () {
    setTimeout(function() {
    $(".flash-msg").fadeOut().empty();
  }, 5000);
  
  $(".flash-msg").on("click",function(){
    $(this).fadeOut();
   })

})

