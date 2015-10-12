$(document).on('click', 'a.scroll-on-page-link', function (e) {
  var jumpobj = jQuery(this);
  var target = jumpobj.attr('href');
  var thespeed = 1000;
  var offset = jQuery(target).offset().top;
  jQuery('html,body').animate({
    scrollTop: offset
  }, thespeed, 'swing');
  e.preventDefault();
});
