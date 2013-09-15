class Snapshot < ActiveRecord::Base
  belongs_to :graph
  delegate :user, :to => :graph, :allow_nil => true

end
