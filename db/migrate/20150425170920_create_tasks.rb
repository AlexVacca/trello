class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :content
      t.integer :duration
      t.date :startd
      t.date :endd
      t.integer :user_id
      t.boolean :finished

      t.timestamps
    end
  end
end
