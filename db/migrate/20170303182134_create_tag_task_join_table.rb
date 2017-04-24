class CreateTagTaskJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_join_table :tasks, :tags do |t|
      t.index [:task_id, :tag_id]
      t.index [:tag_id, :task_id]
    end
  end
end
