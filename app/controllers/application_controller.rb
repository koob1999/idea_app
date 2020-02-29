class ApplicationController < ActionController::Base
    before_action :set_current_user

    def set_current_user
        @current_user = User.find_by(id: session[:user_id])
    end

    def check_current_user
        if @current_user == nil
            flash[:notice] = "いいね機能はログインしないと利用できません"
            redirect_to("/posts/login_form")
        end
    end
end
