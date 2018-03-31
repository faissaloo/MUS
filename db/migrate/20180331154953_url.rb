class Url < ActiveRecord::Migration[5.1]
  def change
    change_column :urls, :longurl, :string, null: false, unique: true
  end
end
