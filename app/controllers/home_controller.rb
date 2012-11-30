class HomeController < ApplicationController
  def index
    binding.pry
    @up = Up.last
  end
  def create
    @name = params[:name]
    @money = params[:money]
    @declaration = params[:declaration]
  end
end
