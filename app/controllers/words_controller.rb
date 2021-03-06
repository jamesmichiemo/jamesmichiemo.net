class WordsController < ApplicationController
  before_action :collect_messages

  # GET /words
  # GET /words.json
  def index
    if params[:id]
      @pieces = Piece.includes(:words).published.where('id < ?', params[:id]).where.not(:words => { :id => nil }).limit(5)
    else
      @pieces = Piece.includes(:words).published.where.not(:words => { :id => nil }).limit(5)
    end
  end

  # GET /words/1
  # GET /words/1.json
  def show
    @piece = Piece.includes(:words).published.where.not(:words => { :id => nil }).find(params[:id])
  end

end
