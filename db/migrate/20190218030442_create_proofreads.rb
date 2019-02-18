class CreateProofreads < ActiveRecord::Migration[5.2]
  def change
    create_table :proofreads do |t|
      t.string :title
      t.text :content
      t.boolean :edited

      t.timestamps
    end
  end
end
