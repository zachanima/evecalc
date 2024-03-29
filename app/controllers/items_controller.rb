class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new params[:item]
    if @item.save
      redirect_to new_item_path, notice: "Created #{@item.name}."
    else
      render action: :new
    end
  end
end
