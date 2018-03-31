class RemoveCode < ActiveRecord::Migration[5.1]
  def change
    remove_column :urls, :code
  end
end
