class Inventory < ApplicationRecord

    belongs_to :user

    has_many :inventory_foods

    
    def recent_inventory
        inventories.order(create_at: :desc).limit(3)
    end

end
