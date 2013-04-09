class RemoveNameFromFeedbacks < ActiveRecord::Migration
  def change
    remove_column :feedbacks, :name
  end
end
