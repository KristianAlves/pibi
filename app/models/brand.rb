class Brand < ActiveRecord::Base
    belongs_to :product

  # Paperclip
  has_attached_file :picture, styles: { thumb: "250x150>", small: "125x75>" }, default_url: "missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

  # Scope
    scope :order_by_title, ->{ order(:title)}

  include FriendlyId
  friendly_id :title
end
