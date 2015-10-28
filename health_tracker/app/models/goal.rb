class Goal < ActiveRecord::Base
  validates_presence_of :calorie_goal, :exercise_goal

  belongs_to :user
  has_many :foods


end
