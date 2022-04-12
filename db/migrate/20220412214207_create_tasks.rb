class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.belongs_to :user
      t.integer :external_id
      t.string :title
      t.boolean :completed

      t.timestamps
    end
  end
end
