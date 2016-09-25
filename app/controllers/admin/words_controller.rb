class Admin::WordsController < ApplicationController
  before_action :authenticate_user
  before_action :collect_messages

  def edit
    @piece = Piece.find(params[:piece_id])
    @word = @piece.words.find(params[:id])
  end

  def create
    @piece = Piece.find(params[:piece_id])
    @word = @piece.words.create(word_params)
    respond_to do |format|
      if @word.save
        format.html { redirect_to edit_admin_piece_path(@piece), notice: 'Words were successfully created.' }
        format.json { render :edit, status: :created, location: @piece }
      else
        format.html { render :new, error: 'Try again.' } 
        format.json { render json: @word.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @piece = Piece.find(params[:piece_id])
    @word = @piece.words.find(params[:id])
    respond_to do |format|
      if @words.update(word_params)
        format.html { redirect_to edit_admin_piece_path(@piece), notice: 'Words were successfully updated.' }
        format.json { render :show, status: :ok, location: @piece }
      else
        format.html { render :edit }
        format.json { render json: @word.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @piece = Piece.find(params[:piece_id])
    @word = @piece.words.find(params[:id])
    @word.destroy
    redirect_to edit_admin_piece_path(@piece)
  end

  private
    def word_params
      params.require(:word).permit(:paragraph)
    end
end
