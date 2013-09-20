class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :graph
  has_many :snapshots, :through => :graph


  #not working. fuck you.
  # after_create :create_graph


  # private

  # def create_graph
  #   create_graph
  # end
  #

end
