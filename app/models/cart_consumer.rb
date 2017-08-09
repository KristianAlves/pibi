class CartConsumer < ActiveRecord::Base
  belongs_to :product
  belongs_to :buyer, class_name: "Consumer"

    def self.item
    self.count(:ad_id)
  end
end
