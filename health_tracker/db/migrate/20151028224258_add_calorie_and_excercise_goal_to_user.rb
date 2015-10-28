class AddCalorieAndExcerciseGoalToUser < ActiveRecord::Migration
  def change
    add_column :users, :calorie_goal, :integer, :default => 0
    add_column :users, :exercise_goal, :integer, :default => 0

    add_column :goals, :calorie_goal, :integer
    add_column :goals, :exercise_goal, :integer
    add_column :goals, :user_id, :integer
    add_column :goals, :date, :datetime
  end
end
