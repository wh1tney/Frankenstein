class AddScoreToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :score, :integer
  end
end