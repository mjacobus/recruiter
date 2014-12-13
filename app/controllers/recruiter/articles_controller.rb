module Recruiter
  class ArticlesController < ApplicationController
    respond_to :html, :json

    def index
      @articles = scope
      respond_with(@articles)
    end

    def show
      @article = scope.find(params[:id])
      respond_with(@article)
    end

    private

    def scope
      Article.published
    end

  end
end
