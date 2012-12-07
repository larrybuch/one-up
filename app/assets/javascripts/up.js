$(function() {
  $('#entry').hide();
  $('.stripe-button').bind('token', token_generated);
  $('div#show-form').click(toggleForm);
  $('#fittext').fitText(0.6);
  $('#fittext2').fitText(1.5);
});

function token_generated (e, token) {
  $('#show-form input[type="hidden"]').val(token.id);
  $('#show-form').submit();
}

function toggleForm () {
  $('#entry').slideToggle();
}