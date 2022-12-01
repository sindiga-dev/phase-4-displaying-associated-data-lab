class UsersController < ApplicationController
    # Users GET /users/:id returns a user with an array of all items associated with that user

    def show
        @user = User.find(params[:id])
        render json: @user, include: :items
    end
end
