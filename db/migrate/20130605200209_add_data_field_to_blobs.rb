class AddDataFieldToBlobs < ActiveRecord::Migration
  def change
    add_column :blobs, :data, :text
  end
end
