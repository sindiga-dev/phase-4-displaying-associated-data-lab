class ItemsController < ApplicationController
    #Items GET /items returns an array of all items with user info
    def index
        @items = Item.all
        render json: @items, include: :user
    end

    #Item GET /items/:id returns a single item with user info
    def show
        @item = Item.find(params[:id])
        render json: @item, include: :user
    end
end
