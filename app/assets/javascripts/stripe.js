$(function(){
    $('.stripe-button').bind('token', token_generated);
});

function token_generated(e, token)
{
    // console.log(e);
    // console.log(token);

    $('#stripeform input[type=hidden]').val(token.id);
    $('#stripeform').submit();
}