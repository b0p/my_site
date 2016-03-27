$(document).ready(function() {
  $('#adminbtn').click(function() {
    $('.bg-4').toggle('slow');
    if($('#adminbtn').val()=='Admin Login'){
      $('#adminbtn').val('Hide Admin Login');
      }
  else{
      $('#adminbtn').val('Admin Login');
      }
    $('html, body').animate({
      scrollTop: $('.bg-4').offset().top
    }, 'slow');
    });
  });
