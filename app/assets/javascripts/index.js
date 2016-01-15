$(document).ready(function () {
  
  var mainbottom = $('#blog').offset().top + $('#blog').height()
  $(window).on('scroll',function(){
    stop = Math.round($(window).scrollTop())
    if (stop > mainbottom) {
      $('.navbar').addClass('past-banner')
    } else {
      $('.navbar').removeClass('past-banner')
   }
  })

  $('a[href^="#blog"], a[href^="#who-am-i"], a[href^="#contact-me"]').on('click', function(event) {
    event.preventDefault()
    var target = this.hash
    var $target = $(target)
    $('html, body').stop().animate({
      'scrollTop': $target.offset().top
    }, 900, 'swing', function () {
      window.location.hash = target
   })
  })
})

