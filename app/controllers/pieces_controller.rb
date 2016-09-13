class PiecesController < ApplicationController
  before_action :collect_messages

  # GET /pieces
  # GET /pieces.json
  def index
    if params[:id]
      @pieces = Piece.published.where('id < ?', params[:id]).limit(5)
    else
      @pieces = Piece.published.limit(5)
    end
  end

  # GET /pieces/1
  # GET /pieces/1.json
  def show
    @piece = Piece.published.find(params[:id])
  end
end
