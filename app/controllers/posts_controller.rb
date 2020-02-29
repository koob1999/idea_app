class PostsController < ApplicationController
  def login_form
  end
  
  def login
    @user = User.find_by(name: params[:name])
    if @user
      session[:user_id] = @user.id
      redirect_to("/")
    else
      flash[:notice] = "この名前は登録されていません"
      redirect_to("/posts/login_form")
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to("/")
  end

  def new_user_form
  end

  def new_user
    user = User.new(name: params[:name])
    if user.save
      redirect_to("/")
    else
      flash[:notice] = user.errors.full_messages[0] 
      redirect_to("/posts/new_user_form")
    end
  end
end
