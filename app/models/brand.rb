class Brand < ActiveRecord::Base
    belongs_to :product

  # Constants
  qtt_per_page = 9

  # Paperclip
  has_attached_file :picture, styles: { thumb: "250x150>", small: "125x75>" }, default_url: "missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

  # Scope
    scope :order_by_title, ->(page) {order(:title).page(page).per(qtt_per_page)}
    scope :search, ->(q, page) {where("title LIKE ?", "%#{q}%").page(page).per(qtt_per_page)}
    scope :pesquisar, ->(q, page) {where("title LIKE ?", "%#{q}%").page(page).per(20)}

  include FriendlyId
  friendly_id :title
end
