class PicturesController < ApplicationController
  before_action :collect_messages

  # GET /pieces
  # GET /pieces.json
  def index
    if params[:id]
      @pieces = Piece.includes(:pictures).published.where('id < ?', params[:id]).where.not(:pictures => { :id => nil }).limit(5)
    else
      @pieces = Piece.includes(:pictures).published.where.not(:pictures => { :id => nil }).limit(5)
    end
  end

  # GET /pieces/1
  # GET /pieces/1.json
  def show
    @piece = Piece.includes(:pictures).published.where.not(:pictures => { :id => nil }).find(params[:id])
  end
end
