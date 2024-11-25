class DonationsController < ApplicationController
  def create
    recurring = params[:recurring] == "1" # Checkbox sends "1" if selected

    if recurring
      # Create a Subscription with a monthly interval
      subscription = Stripe::Subscription.create({
        customer: params[:payment_method_id], # You need a customer ID here
        items: [
          {
            price_data: {
              currency: 'usd',
              recurring: { interval: 'month' },
              unit_amount: (params[:amount].to_i * 100) # Amount in cents
            }
          }
        ],
        expand: ['latest_invoice.payment_intent']
      })

      redirect_to root_path, notice: "Thank you for setting up a monthly donation!"
    else
      # One-time donation using PaymentIntent
      Stripe::PaymentIntent.create({
        amount: (params[:amount].to_i * 100), # Amount in cents
        currency: 'usd',
        payment_method: params[:payment_method_id],
        confirm: true,
        automatic_payment_methods: { enabled: true, allow_redirects: 'never' }
      })

      redirect_to root_path, notice: "Thank you for your donation!"
    end
  rescue Stripe::CardError => e
    redirect_to new_donation_path, alert: e.message
  end
end
