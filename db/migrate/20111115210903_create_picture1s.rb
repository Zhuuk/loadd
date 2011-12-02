class CreatePicture1s < ActiveRecord::Migration
  def self.up
    create_table :picture1s do |t|
      t.string :name
      t.string :comments
      t.string :content_type
      # If using MySQL, blobs default to 64k, so we have to give
      # an explicit size to extend them
      t.binary :data, :limit => 1.megabyte

      t.timestamps
    end
  end

  def self.down
    drop_table :picture1s
  end
end
