class InventoriesController < ApplicationController

  def index
    @inventories = Inventory.all
  end


  def show
    @inventory = Inventory.joins(:user).where(user: { id: params[:user_id] }).find(params[:id])
  end

  end
  