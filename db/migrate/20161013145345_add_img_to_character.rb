class AddImgToCharacter < ActiveRecord::Migration[5.0]
  def change
    add_column :characters, :img_url, :string
  end
end
