class AddPointsToScores < ActiveRecord::Migration
  def change
  	add_column :scores, :points, :integer
  end
end
