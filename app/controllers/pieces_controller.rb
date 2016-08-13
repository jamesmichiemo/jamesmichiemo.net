class PiecesController < ApplicationController
  # GET /pieces
  # GET /pieces.json
  def index
    @video_stream = VideoStream.first
    @pieces = Piece.published.order(:created_at).page(params[:page])
  end

  # GET /pieces/1
  # GET /pieces/1.json
  def show
    @video_stream = VideoStream.first
    @piece = Piece.published.find(params[:id])
  end
end
