Stripe.setPublishableKey('pk_test_I8SKWuKl15WS20XOZtGFmIPC');

var $form = $('#checkout-form');

$form.submit(function(event){

  $('#charge-error').addClass('hidden');
  $form.find('button').prop('disabled', true);

  Stripe.createToken({
      number: $('#card-number').val(),
      cvc: $('#card-cvc').val(),
      exp_month: $('#card-expiry-month').val(),
      exp_year: $('#card-expiry-year').val(),
      name: $('#card-name').val()
  }, stripeResponseHandler);

  return false;
});

function stripeResponseHandler(status, response){
  if(response.error){
    $('#charge-error').removeClass('hidden');
    $('#charge-error').text(response.error.message);
    $form.find('button').prop('disabled', false);
  }else{
    var token = response.id;
    $form.append($('<input type="hidden" name="stripeToken" />').val(token));

    $form.get(0).submit();
  }
}
