class Category < ActiveRecord::Base
has_many :subcategory

  include FriendlyId
  friendly_id :description, use: :slugged

# Validations
  validates_presence_of :description

  # Scope
  scope :order_by_description, ->{ order(:description)}

end
