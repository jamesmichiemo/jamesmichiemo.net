class AudioController < ApplicationController
  before_action :collect_messages

  # GET /pieces
  # GET /pieces.json
  def index
    if params[:id]
      @pieces = Piece.published.where('id < ?', params[:id]).where.not(audio: '').limit(5)
    else
      @pieces = Piece.published.where.not(audio: '').limit(5)
    end

    respond_to do |format|
      format.html
      format.js
    end

  end

  # GET /pieces/1
  # GET /pieces/1.json
  def show
    @piece = Piece.published.where.not(audio: '').find(params[:id])
  end
end
