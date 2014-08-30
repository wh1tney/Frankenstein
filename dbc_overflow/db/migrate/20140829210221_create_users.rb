class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, limit: 30, null: false
      t.string :password_hash, limit: 30, null: false
      t.timestamps
    end
  end
end
