class Graph < ActiveRecord::Base
  belongs_to :user
  has_many :snapshots

  #something funny is happening.
  #a user can only have one graph at a time @user.graph. @user.graphs doesn't work.
  #but each time you do @user.create_graph, a new graph is create and that becomes the defaulg graph

  #need to find a way to create one graph at time of user creation and lock to that graph
end
