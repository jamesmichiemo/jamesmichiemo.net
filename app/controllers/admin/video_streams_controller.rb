class Admin::VideoStreamsController < ApplicationController
  before_action :authenticate_user
  before_action :set_video_stream, only: [:show, :edit, :update]
  before_action :collect_messages  

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @video_stream.update(video_stream_params)
        format.html { redirect_to admin_video_stream_path(@video_stream), notice: 'Video stream was successfully updated.' }
        format.json { render :show, status: :ok, location: @video_stream }
      else
        format.html { render :edit }
        format.json { render json: @video_stream.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_video_stream
      @video_stream = VideoStream.find(1)
    end

    def video_stream_params
      params.require(:video_stream).permit(:url)
    end

end
