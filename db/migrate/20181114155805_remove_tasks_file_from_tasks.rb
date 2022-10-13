class RemoveTasksFileFromTasks < ActiveRecord::Migration[5.2]
  def change
    remove_column :tasks, :tasks_file, :text
  end
end
