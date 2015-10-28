class UsersController < ApplicationController
  before_action :authenticate_user!, :set_date

  def show
    @user = current_user
  end

  def set_date
    if current_user.goals.any? && current_user.goals.last.date.today?
        @goal = current_user.goals.last
    else
      @goal = current_user.goals.create(date: DateTime.now, calorie_goal: current_user.calorie_goal, exercise_goal: current_user.calorie_goal)
    end
  end
end
