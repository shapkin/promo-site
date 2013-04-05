class SetDefaultsForFeedbacks < ActiveRecord::Migration
  def change
    change_column :feedbacks, :is_approved, :boolean, default: false
  end
end
