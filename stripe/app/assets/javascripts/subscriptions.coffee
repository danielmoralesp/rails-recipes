# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  Stripe.setPublishableKey('pk_test_pivvEwcms4nHFbRMreHRKz5q');

  $('#payment-form').submit (event) ->
    $form = $(this)
    $form.find('button').prop 'disabled', true
    Stripe.card.createToken $form, stripeResponseHandler
    false

stripeResponseHandler = (status, response) ->
  $form = $('#payment-form')
  if response.error
    # Show the errors on the form
    $form.find('.payment-errors').text response.error.message
    $form.find('button').prop 'disabled', false
  else
    # token contains id, last4, and card type
    token = response.id
    # Insert the token into the form so it gets submitted to the server
    $form.append $('<input type="hidden" name="stripeToken" />').val(token)
    $form.append $('<input type="hidden" name="card_last4" />').val(response.card.last4)
    $form.append $('<input type="hidden" name="card_exp_month" />').val(response.card.exp_month)
    $form.append $('<input type="hidden" name="card_exp_yaer" />').val(response.card.exp_year)
    $form.append $('<input type="hidden" name="card_brand" />').val(response.card.brand)
    # and submit
    #console.log response
    $form.get(0).submit()
  return
