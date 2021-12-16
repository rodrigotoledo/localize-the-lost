class ChangeDescriptionToText < ActiveRecord::Migration[7.0]
  def change
    change_column :losts, :description, :text
  end
end
