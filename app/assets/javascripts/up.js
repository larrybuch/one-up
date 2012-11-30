$(function() {
  $('div.form').hide();
  $('.stripe-button').bind('token', token_generated);
  $('div#show-form').click(toggleForm);
});

function token_generated (e, token) {
  $('#stripe-form input[type="hidden"]').val(token.id);
  $('#stripe-form').submit();
}

function toggleForm () {
  $('div.form').toggle();
}