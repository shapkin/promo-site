class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.string :name
      t.text :body
      t.boolean :is_approved

      t.timestamps
    end
  end
end
