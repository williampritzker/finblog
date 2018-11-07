class Api::UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    render 'show.json.jbuilder'
  end

  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )

    if user.save
      render json: {message: 'User created successfully'}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end

  def update
    @user = User.find(params[:id])
    @user.name = params[:name] || @user.name
    @user.email = params[:email] || @user.email
    @user.password = params[:password] || @user.password
    @user.password = params[:password_confirmation] || @user.password_confirmation

    if @user.save
      render 'show.json.jbuilder'
    else 
      render json: {errors: @user.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    render json: {messages: "user removed"}
  end
  
end

