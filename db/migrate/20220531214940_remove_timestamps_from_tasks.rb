class RemoveTimestampsFromTasks < ActiveRecord::Migration[6.1]
  def change
    remove_column :tasks, :created_at
    remove_column :tasks, :updated_at
  end
end
