class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
  end

  def create
  end
end
