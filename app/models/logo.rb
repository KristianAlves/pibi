class Logo < ActiveRecord::Base

  # Paperclip
  has_attached_file :picture, styles: { thumb: "140x50>" }, default_url: "missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

end
