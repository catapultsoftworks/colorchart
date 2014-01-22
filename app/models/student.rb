class Student < User
  has_many :enrollments, :dependent => :destroy
  has_many :classgroups, :through => :enrollments

  has_many :daily_outcomes
  # attr_accessible :title, :body
end
