class Admin::PicturesController < ApplicationController
  before_action :authenticate_user
  before_action :collect_messages

  def edit
    @piece = Piece.find(params[:piece_id])
    @picture = @piece.pictures.find(params[:id])
  end

  def create
    @piece = Piece.find(params[:piece_id])
    @picture = @piece.pictures.create(picture_params)
    redirect_to edit_admin_piece_path(@piece)
  end

  def update
    @piece = Piece.find(params[:piece_id])
    @picture = @piece.pictures.find(params[:id])
    respond_to do |format|
      if @picture.update(picture_params)
        format.html { redirect_to edit_admin_piece_path(@piece), notice: 'Pic was successfully updated.' }
        format.json { render :show, status: :ok, location: @piece }
      else
        format.html { render :edit }
        format.json { render json: @picture.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @piece = Piece.find(params[:piece_id])
    @picture = @piece.pictures.find(params[:id])
    @picture.destroy
    redirect_to edit_admin_piece_path(@piece)
  end

  private
    def picture_params
      params.require(:picture).permit(:image, :caption, :row)
    end
end
