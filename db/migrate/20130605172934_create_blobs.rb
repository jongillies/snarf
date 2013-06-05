class CreateBlobs < ActiveRecord::Migration
  def change
    create_table :blobs do |t|
      t.text :checksum, :null => false

      t.timestamps
    end
    add_index :blobs, :checksum, :unique => true
  end
end
