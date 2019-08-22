class Product < ActiveRecord::Base
    validates :name, presence: true, uniquenesss: true
    validates :price, presence: true, numercality: { greater_than: 0 }

    def price_in_cents
      (price * 100).to_i
    end
    
end
