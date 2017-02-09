class AddDetailsToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :format, :string
    add_column :books, :year, :integer
    add_column :books, :pages, :integer
    add_column :books, :publisher, :string
  end
end
