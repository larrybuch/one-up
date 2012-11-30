class HomeController < ApplicationController
  def index
    binding.pry
    @up = Up.last
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
