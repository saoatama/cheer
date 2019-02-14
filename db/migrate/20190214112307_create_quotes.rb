class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.string :name
      t.string :title
      t.integer :year
      t.string :publisher
    end
  end
end
