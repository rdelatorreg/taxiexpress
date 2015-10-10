class AddAttachmentImageToCarousels < ActiveRecord::Migration
  def self.up
    change_table :carousels do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :carousels, :image
  end
end
