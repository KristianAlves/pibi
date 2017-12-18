class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :subcategory
  belongs_to :brand
  belongs_to :admin

  # Constants
  qtt_per_page = 9

  # Validates
  validates_presence_of :title, :description, :category, :subcategory, :brand, :picture, presence: true

  # Paperclip
  has_attached_file :picture, styles: { large: "800x300>", medium: "300x300#", thumb: "100x100>" }, default_url: "missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

  # Scope
  scope :last_nine, ->{ limit(9).order(:created_at)}
  scope :descending_order, ->(page) {order('random()').page(page).per(qtt_per_page)}
  scope :descending_products, ->(page) {order('random()').page(page).per(20)}
  scope :by_category, ->(id, page) {where(category: id).page(page).per(qtt_per_page)}
  scope :by_subcategory, ->(id, page) {where(subcategory: id).page(page).per(qtt_per_page)}
  scope :by_brand, ->(id, page) {where(brand: id).page(page).per(qtt_per_page)}
  scope :search, ->(q, page) {where("title LIKE ?", "%#{q}%").page(page).per(qtt_per_page)}
  scope :pesquisar, ->(q, page) {where("title LIKE ?", "%#{q}%").page(page).per(20)}
end
