class ItemsController < ApplicationController

  def index
    @items = Item.all.order("created_at_DESC")
  end

  def new
    @item = Item.new
  end

end