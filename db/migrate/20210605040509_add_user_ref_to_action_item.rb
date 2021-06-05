class AddUserRefToActionItem < ActiveRecord::Migration[6.1]
  def change
    add_reference :action_items, :user, null: false, foreign_key: true
  end
end
