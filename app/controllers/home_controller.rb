class HomeController < ApplicationController
  def index
    # binding.pry
    @up = Up.last
    @up_money = ((@up.money + 1).to_f)/100
  end
  def create
    up = Up.last
    name = params[:name]
    money = params[:money].to_i
    declaration = params[:declaration]
    if @money > up.money
      newup = Up.create(:name => name, :money => money, :declaration => declaration)
    else
      render root_path
    end
  end
end
