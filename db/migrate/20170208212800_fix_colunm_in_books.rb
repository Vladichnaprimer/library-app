class FixColunmInBooks < ActiveRecord::Migration[5.0]
  def change
      rename_column :books, :title, :name
  end
end
