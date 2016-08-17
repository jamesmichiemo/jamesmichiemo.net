class PiecesController < ApplicationController
  before_action :stream_video

  # GET /pieces
  # GET /pieces.json
  def index
    if params[:id]
      @pieces = Piece.published.where('id < ?', params[:id]).limit(5)
    else
      @pieces = Piece.published.limit(5)
    end

    respond_to do |format|
      format.html
      format.js
    end

  end

  # GET /pieces/1
  # GET /pieces/1.json
  def show
    @piece = Piece.published.find(params[:id])
  end
end
