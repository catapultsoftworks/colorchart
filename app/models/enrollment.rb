class Enrollment < ActiveRecord::Base
  belongs_to :student
  belongs_to :classgroup
  attr_accessible :classgroup_id, :student_id
end
