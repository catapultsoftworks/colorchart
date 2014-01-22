class TeachingAssignment < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :classgroup
  attr_accessible :classgroup_id, :teacher_id
end
