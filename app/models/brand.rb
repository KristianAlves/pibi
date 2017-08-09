class Brand < ActiveRecord::Base

  # Paperclip
  has_attached_file :picture, styles: { thumb: "250x150>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

end