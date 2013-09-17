class SnapshotsController < ApplicationController
  def new
    @user = User.find(current_user.id)
    @graph = current_user.graph
    @snapshot = Snapshot.new
  end

  def create
      @snapshot = Snapshot.new(snapshot_params)

      if @snapshot.save
        redirect_to "/users/#{current_user.id}/graph"
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
      params.require(:snapshot).permit(:graph_id, :calmness, :happiness, :exercise, :exercise_min, :weight, :body_fat, :notes)
    end
end
