class AddAttachmentDocumentToWorkwithus < ActiveRecord::Migration
  def self.up
    change_table :workwithus do |t|
      t.attachment :document
    end
  end

  def self.down
    remove_attachment :workwithus, :document
  end
end
