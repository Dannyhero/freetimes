class AddImageToMicropost < ActiveRecord::Migration[5.0]
  def change
    add_column :microposts, :image, :text
  end
end
