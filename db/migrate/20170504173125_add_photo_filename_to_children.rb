class AddPhotoFilenameToChildren < ActiveRecord::Migration
  def change
    add_column :children, :photo_filename, :string
  end
end
