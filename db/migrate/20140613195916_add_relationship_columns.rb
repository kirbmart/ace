class AddRelationshipColumns < ActiveRecord::Migration
  def change
  	add_column :games, :user_id, :integer
  	add_column :scores, :game_id, :integer
  end
end
