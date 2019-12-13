class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :update, :destroy]

  # GET /items
  def index
    @items = Item.all

    render json: @items
  end

  # GET /items/1
  def show
    @item = Item.find(params[:id])
    render json: @item
  end

  # POST /items
  def create
    @item = Item.new(params[:id])

    if @item.save
      render json: @item, status: :created
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /items/1
  # def update
  #   @item = Item.find(params[:id])
  #
  #   if @item.update(item_params)
  #     render json: @item
  #   else
  #     render json: @item.errors, status: :unprocessable_entity
  #   end
  # end
  #
  # # DELETE /items/1
  # def destroy
  #   @itme = Item.find(params[:id])
  #   @item.destroy
  # end

  # private
    # Use callbacks to share common setup or constraints between actions.
    # def set_item
    #   @item = Item.find(params[:id])
    # end

    # Only allow a trusted parameter "white list" through.
    def item_params
      params.require(:item).permit(:name, :size, :category, :zip_code, :user_id, :item_id)
    end
end