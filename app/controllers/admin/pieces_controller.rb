class Admin::PiecesController < ApplicationController
  before_action :authenticate_user
  before_action :set_piece, only: [:show, :edit, :update, :destroy]
  before_action :collect_messages


  # GET /pieces
  # GET /pieces.json
  def index
    @pieces = Piece.all
  end

  # GET /pieces/1
  # GET /pieces/1.json
  def show
  end

  # GET /pieces/new
  def new
    @piece = Piece.new
    respond_to do |format|
      if @piece.save
        format.html { redirect_to edit_admin_piece_path(@piece), notice: 'Piece was successfully created.' }
        format.json { render :edit, status: :created, location: @piece }
      else
        format.html { render :new }
        format.json { render json: @piece.errors, status: :unprocessable_entity }
      end
    end
 
  end

  # GET /pieces/1/edit
  def edit
  end

  # POST /pieces
  # POST /pieces.json
  # def create
  #   @piece = Piece.new(piece_params)

  #   respond_to do |format|
  #     if @piece.save
  #       format.html { redirect_to edit_admin_piece_path(@piece), notice: 'Piece was successfully created.' }
  #       format.json { render :edit, status: :created, location: @piece }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @piece.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # PATCH/PUT /pieces/1
  # PATCH/PUT /pieces/1.json
  def update
    respond_to do |format|
      if @piece.update(piece_params)
        format.html { redirect_to admin_piece_path(@piece), notice: 'Piece was successfully updated.' }
        format.json { render :show, status: :ok, location: @piece }
      else
        format.html { render :edit }
        format.json { render json: @piece.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pieces/1
  # DELETE /pieces/1.json
  def destroy
    @piece.destroy
    respond_to do |format|
      format.html { redirect_to admin_pieces_url, notice: 'Piece was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def publish
    @piece = Piece.find(params[:id])
    if @piece.publish_and_save
      redirect_to edit_admin_piece_path(@piece),
                  notice: 'Piece published!'
    else
      redirect_to edit_admin_piece_path(@piece),
                  alert: 'Piece was not published!'
    end
  end
 
  def unpublish
    @piece = Piece.find(params[:id])
    if @piece.unpublish_and_save
      redirect_to edit_admin_piece_path(@piece),
                  notice: 'Piece unpublished!'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piece
      @piece = Piece.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def piece_params
      params.require(:piece).permit(:video, :audio, :words, :caption)
    end
end
