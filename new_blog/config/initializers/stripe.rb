# config/initializers/stripe.rb
Stripe.api_key = Rails.application.credentials.stripe.dig(:stripe, :secret_key)