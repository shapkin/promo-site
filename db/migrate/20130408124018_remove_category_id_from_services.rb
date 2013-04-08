class RemoveCategoryIdFromServices < ActiveRecord::Migration
  def change
    remove_column :services, :category_id
  end
end
