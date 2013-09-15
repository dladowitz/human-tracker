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
    @profile = current_user
    @graph = current_user.graph
  end

  def update
  end
end
