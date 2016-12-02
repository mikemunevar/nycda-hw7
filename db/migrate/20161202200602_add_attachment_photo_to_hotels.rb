# mikemunevar:~/workspace (master) $ rails generate paperclip hotel photo
# Running via Spring preloader in process 73983
#       create  db/migrate/20161202200602_add_attachment_photo_to_hotels.rb
# mikemunevar:~/workspace (master) $ 

class AddAttachmentPhotoToHotels < ActiveRecord::Migration
  def self.up
    change_table :hotels do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :hotels, :photo
  end
end
