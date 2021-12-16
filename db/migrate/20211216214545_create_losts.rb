class CreateLosts < ActiveRecord::Migration[7.0]
  def change
    create_table :losts do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.string :description
      t.datetime :lost_at
      t.float :latitude
      t.float :longitude
      t.boolean :finded

      t.timestamps
    end
  end
end
