class ItemsController < ApplicationController
  before_action :set_item, only: [:edit, :show, :update, :destroy]


  def index
    @items = Item.all.order("calendar DESC")
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to item_path
    else
      render :edit
    end
  end

  def destroy
    if @item.destroy
      redirect_to root_path
    end
  end


  private

  def item_params
    params.require(:item).permit(:image, :item_name, :item_category_id, :price, :regret_id, :memo, :calendar)
  end

  def set_item
    @item = Item.find(params[:id])
  end

end