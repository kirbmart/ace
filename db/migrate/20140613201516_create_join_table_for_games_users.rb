class CreateJoinTableForGamesUsers < ActiveRecord::Migration
  def up
  	create_table :games_users do |t|
  		t.references :user
  		t.references :game
      t.timestamps
    end
  	remove_column :users, :game_id
    remove_column :games, :user_id
  end
  def down
  	drop_table :games_users
		add_column :users, :game_id, :integer
		add_column :games, :user_id, :integer
  end
end
