class LikesController < ApplicationController
    before_action :check_current_user

    def parent_like
        like = Like.find_by(idea_id: params[:idea_id], user_id: @current_user.id)
        idea = Idea.find_by(id: params[:idea_id])

        if like == nil
            like = Like.new(idea_id: idea.id, user_id: @current_user.id)
            like.save

            idea.like = Like.where(idea_id: idea.id).count
            idea.save
        end

        redirect_to("/")
    end

    def child_like
        like = Like.find_by(idea_id: params[:idea_id], user_id: @current_user.id)
        idea = Idea.find_by(id: params[:idea_id])

        if like == nil
            like = Like.new(idea_id: idea.id, user_id: @current_user.id)
            like.save

            idea.like = Like.where(idea_id: idea.id).count
            idea.save
        end

        redirect_to("/#{idea.parent_id}/children")
    end
end