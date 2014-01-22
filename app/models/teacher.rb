class Teacher <  User
  has_many :teaching_assignments, :dependent => :destroy
  has_many :classgroups, :through => :teaching_assignments
  # attr_accessible :title, :body
end
