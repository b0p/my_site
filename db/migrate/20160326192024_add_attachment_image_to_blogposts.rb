class AddAttachmentImageToBlogposts < ActiveRecord::Migration
  def self.up
    add_attachment :blogposts, :image
  end

  def self.down
    remove_attachment :blogposts, :image
  end
end
