$(function() {
  $('.stripe-button').bind('token', token_generated);
  $('#fittext').fitText(0.6);
  $('#fittext2').fitText(1.5);
});

function token_generated (e, token) {
  $('#show-form input[type="hidden"]').val(token.id);
  $('#show-form').submit();
}