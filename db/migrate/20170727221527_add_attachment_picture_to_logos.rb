class AddAttachmentPictureToLogos < ActiveRecord::Migration
  def self.up
    change_table :logos do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :logos, :picture
  end
end
