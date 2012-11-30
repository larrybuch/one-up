class HomeController < ApplicationController
  def index
    @up = Up.last
  end
  def create
    @name = params[:name]
    @money = params[:money]
    @declaration = params[:declaration]
  end
end
