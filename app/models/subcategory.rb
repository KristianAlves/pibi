class Subcategory < ActiveRecord::Base
    belongs_to :category
    validates_presence_of :title, :category

  # Scope
  scope :order_by_description, ->{ order(:title)}
  scope :order_by_title, ->{ order(:title)}

  include FriendlyId
  friendly_id :title



end
