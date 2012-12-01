class HomeController < ApplicationController
  def index
    @up = Up.last
    @up_money = ((@up.money + 1).to_f)/100
  end
  def create
    up = Up.last
    name = params[:name]
    money = params[:money].to_i
    declaration = params[:declaration]

    if money > up.money

      amount = money * 100
      # times 100 because in cents
      token = params[:stripeToken]

      begin
        newup = Up.create(:name => name, :money => money, :declaration => declaration)
        @stripe = Stripe::Charge.create(
          :amount => amount,
          :card => token,
          :description => 'One Up Customer',
          :currency => 'usd'
          )
      rescue => e
        @error = e.message
      end
    else
      render :root
    end
    #binding.pry
    redirect_to root_path
  end
end
