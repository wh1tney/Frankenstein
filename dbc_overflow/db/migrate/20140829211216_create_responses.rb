class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.string :content
      t.integer :user_id
      t.string :response_to_type
      t.integer :response_to_id

      t.timestamps
    end
  end
end
