class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title, limit: 30, null: false
      t.string :content, null: false
      t.integer :user_id
      t.integer :best_answer_id

      t.timestamps
    end
  end
end
