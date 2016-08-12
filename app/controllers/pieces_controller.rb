class PiecesController < ApplicationController
  # GET /pieces
  # GET /pieces.json
  def index
    @pieces = Piece.published.order(:created_at).page(params[:page])
  end

  # GET /pieces/1
  # GET /pieces/1.json
  def show
    @piece = Piece.published.find(params[:id])
  end
end
