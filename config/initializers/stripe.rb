Rails.configuration.stripe = {
  publishable_key: Rails.application.secrets['stripe']['publishable_key'],
  secret_key:  	Rails.application.secrets['stripe']['secret_key']
}
 
Stripe.api_key = Rails.configuration.stripe[:secret_key]
 
StripeEvent.configure do |events|
  events.subscribe 'charge.succeeded' do |event|
    flash[:success] = "Your payment was successful."
  end
  
end