class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :user_roles, :dependent => :destroy
  has_many :roles, :through => :user_roles
  attr_accessible :remember_me, :role_ids, :email, :password, :password_confirmation, :first, :last, :roles  #is it unsafe to have role_ids here??


  def hasRole?(rolename)
    #self.roles.find_by_name(role).length
    self.roles.includes(:roles).where(roles: {name: rolename}).any?
    #puts 'yo2'
  end  

  def lastFirst
    self.last + ", " + self.first
  end
end
