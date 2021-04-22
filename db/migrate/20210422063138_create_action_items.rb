class CreateActionItems < ActiveRecord::Migration[6.1]
  def change
    create_table :action_items do |t|
      t.string :action
      t.string :category
      t.string :priority
      t.text :comment

      t.timestamps
    end
  end
end
