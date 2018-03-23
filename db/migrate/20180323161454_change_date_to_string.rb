class ChangeDateToString < ActiveRecord::Migration[5.1]
  def change
    change_column :adventures, :date, :string
  end
end
