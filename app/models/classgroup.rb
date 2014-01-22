class Classgroup < ActiveRecord::Base
  has_many :teaching_assignments
  has_many :teachers, :through => :teaching_assignments

  has_many :enrollments
  has_many :students, :through => :enrollments

  has_many :daily_outcomes
  attr_accessible :grade, :year
end
