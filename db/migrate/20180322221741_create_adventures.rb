class CreateAdventures < ActiveRecord::Migration[5.1]
  def change
    create_table :adventures do |t|
      t.string :title
      t.string :location
      t.string :description
      t.date :date

      t.timestamps
    end
  end
end
