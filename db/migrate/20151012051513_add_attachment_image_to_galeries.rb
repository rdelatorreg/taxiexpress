class AddAttachmentImageToGaleries < ActiveRecord::Migration
  def self.up
    change_table :galeries do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :galeries, :image
  end
end
