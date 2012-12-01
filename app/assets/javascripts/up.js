$(function() {
  $('div.form').hide();
  $('.stripe-button').bind('token', token_generated);
  $('div#show-form').click(toggleForm);
});

function token_generated (e, token) {
  $('#show-form input[type="hidden"]').val(token.id);
  $('#show-form').submit();
}

function toggleForm () {
  $('div.form').toggle();
}