class AddImagesAndTagsToPosts < ActiveRecord::Migration[8.0]
  def change
    add_column :posts, :images, :string
  end
end
