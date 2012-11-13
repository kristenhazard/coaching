class CoachingHistory < ActiveRecord::Base
  attr_accessible :coach_id, :role, :team_id, :year
end
