class NotNullableCode < ActiveRecord::Migration[5.1]
  def change
    change_column :urls, :code, :string, null: false, unique: true
  end
end
