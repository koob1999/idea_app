class CreateIdeas < ActiveRecord::Migration[6.0]
  def change
    create_table :ideas do |t|
      t.string :content
      t.integer :like

      t.timestamps
    end
  end
end
