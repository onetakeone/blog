class CreateQuotes < ActiveRecord::Migration[5.1]
  def change
    create_table :quotes do |t|
      t.string :name
      t.text :quote

      t.timestamps
    end
  end
end
