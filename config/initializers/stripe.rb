Rails.configuration.stripe = {
# referencing keys as environmental variables through Figaro
  :publishable_key => "#{ENV['stripe_test_publishable_key']}",

  :secret_key => "#{ENV['stripe_test_secret_key']}"
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
