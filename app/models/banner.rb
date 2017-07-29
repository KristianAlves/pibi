class Banner < ActiveRecord::Base

  # Paperclip
  has_attached_file :picture, styles: { large: "800x300#", thumb: "200x75>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

end
