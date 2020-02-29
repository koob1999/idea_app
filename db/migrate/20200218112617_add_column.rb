class AddColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :ideas, :parent_id, :integer
  end
end
