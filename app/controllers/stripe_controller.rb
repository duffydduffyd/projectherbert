Stripe.api_key = ENV["SECRET_KEY"]

post '/charge' do
  @amount = 8500

  p params

  customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :card  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :amount      => @amount,
    :description => 'Sinatra Charge',
    :currency    => 'usd',
    :customer    => customer
  )

  # erb :charge
  redirect "/children/1"
end
