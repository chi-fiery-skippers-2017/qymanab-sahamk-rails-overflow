class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string  :title, null: false
      t.string  :body, null: false
      t.integer :author_id

      t.timestamps
    end
  end
end
