class CreateStateOfWorks < ActiveRecord::Migration[7.0]
  def change
    create_table :state_of_works do |t|
      t.references :user, null: false, foreign_key: true
      t.string :state
      t.datetime :state_at

      t.timestamps
    end
  end
end
