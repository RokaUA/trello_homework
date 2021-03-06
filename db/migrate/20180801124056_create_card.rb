class CreateCard < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :title, null: false
      t.text :text
      t.datetime :due_date
      t.belongs_to :list, foreign_key: true
      t.integer :comments_count, :integer, default: 0

      t.timestamps
    end
  end
end
