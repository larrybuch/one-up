$(function() {
  $('.stripe-button').bind('token', token_generated);
});

function token_generated (e, token) {
  $('#stripe-form input[type="hidden"]').val(token.id);
  $('#stripe-form').submit();
}

