class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :subcategory
  belongs_to :brand
  belongs_to :admin

  # Validates
  validates_presence_of :title, :description, :category, :subcategory, :brand, :picture

  # Paperclip
  has_attached_file :picture, styles: { large: "800x300>", medium: "300x300#", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

  # Scope
  scope :last_nine, ->{ limit(9).order(:created_at)}
  scope :descending_order, ->(quantity = 12) {limit(quantity).order(created_at: :desc)}
  scope :by_category, ->(id) {where(category: id)}

end
