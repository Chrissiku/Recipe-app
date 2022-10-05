class InventoryFoodsController < ApplicationController

    def index
        @inventory_foods = InventoryFood.joins(:inventory).where(inventory: { id: params[:inventory_id] })
      end
    
      
    def show
     @inventory_food = InventoryFood.joins(:inventory).where(inventory: { id: params[:inventory_id] }).find(params[:id])
    end
   
end
    