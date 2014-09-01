class IncreaseContentLimits < ActiveRecord::Migration
  def change
    change_column :questions, :title, :string, :limit => 140
    change_column :users, :email, :string, :limit => 140
    change_column :users, :password_hash, :string, :limit => 100
  end
end
