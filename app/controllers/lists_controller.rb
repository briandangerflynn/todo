class ListsController < ApplicationController
  # frozen_string_literal: true
  before_action :set_list, only: %i[ destroy]

  # GET /lists
  # GET /lists.json
  def index
    @lists = current_user.lists
  end

  # GET /lists/new
  def new
    @list = current_user.lists.new
  end

  # POST /lists
  # POST /lists.json
  def create
    @list = current_user.lists.new(list_params)

    respond_to do |format|
      if @list.save
        format.html { redirect_to lists_path, notice: 'List was successfully created.' }
        format.json { render :show, status: :created, location: @list }

      else
        format.html { render :new }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lists/1
  # DELETE /lists/1.json
  def destroy
    @list.destroy
    respond_to do |format|
      format.html { redirect_to lists_path, notice: 'List was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_list
    @list = List.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def list_params
    params.require(:list).permit(:title, :user_id)
  end
end
