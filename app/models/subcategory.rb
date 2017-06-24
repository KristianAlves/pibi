class Subcategory < ActiveRecord::Base
    belongs_to :category
    validates_presence_of :title, :category

  # Scope
  scope :order_by_description, ->{ order(:title)}

end
