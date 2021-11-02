class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new]

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(items_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def items_params
    params.require(:item).permit(:image, :name, :text, :category_id, :status_id, :delivery_charge_bearer_id, :prefecture_id, :delivery_days_id, :price).merge(user_id: current_user.id)
  end
end
