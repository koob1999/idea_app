class IdeasController < ApplicationController
  def parents
    @ideas = Idea.where(parent_id: nil).order(created_at: :desc)
  end

  def parents_like
    @ideas = Idea.where(parent_id: nil).order(like: :desc)
    render("ideas/parents")
  end

  def children
    @parent_idea = Idea.find_by(id: params[:parent_id])
    @children_idea = Idea.where(parent_id: params[:parent_id]).order(created_at: :desc)
  end

  def children_like
    @parent_idea = Idea.find_by(id: params[:parent_id])
    @children_idea = Idea.where(parent_id: params[:parent_id]).order(like: :desc)
    render("ideas/children")
  end

  def create
  end

  def new
    idea = Idea.new(content: params[:text], parent_id: params[:parent_id])
    idea.save
    redirect_to("/#{params[:parent_id]}/children")
  end

  def new_parent
    idea = Idea.new(content: params[:text])
    idea.save
    redirect_to("/")
  end

end
