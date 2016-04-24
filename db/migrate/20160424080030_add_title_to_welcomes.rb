class AddTitleToWelcomes < ActiveRecord::Migration
  def change
    add_column :welcomes, :title, :string
  end
end
