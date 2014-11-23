class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :questions, :content, :question
  end
end
