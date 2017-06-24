class Product < ActiveRecord::Base
  belongs_to :subcategory
  belongs_to :brand
  belongs_to :admin

  # Paperclip
  has_attached_file :picture, styles: { medium: "300x300#", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

  # Scope
  scope :last_nine, ->{ limit(9).order(:created_at)}


end
