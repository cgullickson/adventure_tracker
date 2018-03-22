class AddImageToAdventure < ActiveRecord::Migration[5.1]
  def change
    add_column :adventures, :img_url, :string
  end
end
