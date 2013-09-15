class SnapshotsController < ApplicationController
  def new
    @graph = Graph.find(params[:graph_id])
    @snapshot = Snapshot.new
  end

  def create
      @snapshot = Snapshot.new(snapshot_params)

      if @snapshot.save
        redirect_to :back
      else
        render :new
      end
  end

  def edit
  end

  def update
  end

  def index
  end

  def show
    @snapshot = Snapshot.find(params[:id])
  end

  def destroy
  end

  private
    def snapshot_params
      params.require(:snapshot).permit(:calmness, :happiness)
    end
end
