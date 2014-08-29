class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :vote_value
      t.integer :user_id
      t.string :vote_for_type
      t.integer :vote_for_id

      t.timestamps
    end
  end
end
