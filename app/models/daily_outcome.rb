class DailyOutcome < ActiveRecord::Base
  belongs_to :behavior_rank
  belongs_to :student
  belongs_to :classgroup
  attr_accessible :student, :classgroup, :behavior_rank, :classgroup_id, :comment, :date, :student_id
end
