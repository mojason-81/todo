class AddDefaultToDone < ActiveRecord::Migration[5.0]
  def change
    change_column_default :tasks, :done, false
  end
end
