class GraphsController < ApplicationController
  def create
  end

  def destroy
  end

  def edit
  end

  def index
  end

  def new
    @graph = Graph.new
  end

  def show
    #because we couldn't get this to work as an after_create in the users model
    current_user.create_graph unless current_user.graph

    @user = current_user
    @graph = current_user.graph
  end

  def update
  end
end
