class AddThumbImageToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :thumb_image, :string
  end
end
