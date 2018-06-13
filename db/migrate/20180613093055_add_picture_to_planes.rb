class AddPictureToPlanes < ActiveRecord::Migration[5.2]
  def change
    add_column :planes, :picture, :string
  end
end
