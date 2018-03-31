class CreateUrls < ActiveRecord::Migration[5.1]
  def change
    create_table :urls do |t|
      t.string :longurl
      t.string :code

      t.timestamps
    end
    add_index :urls, :code, unique: true
  end
end
