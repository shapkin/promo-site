class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.text :description
      t.attachment :photo
      t.decimal :price
      t.references :category

      t.timestamps
    end
    add_index :services, :category_id
  end
end
