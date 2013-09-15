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
    @graph = Graph.find(params[:id])
  end

  def update
  end
end
