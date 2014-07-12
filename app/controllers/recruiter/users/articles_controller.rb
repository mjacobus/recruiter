module Recruiter
  module Users
    class ArticlesController < UserController
      before_action :set_article, only: [:show, :edit, :update, :destroy]

      def index
        @articles = scope
        respond_with(@articles)
      end

      def show
        respond_with(@article)
      end

      def new
        @article = scope.build
        respond_with(@article)
      end

      def create
        @article = scope.build(article_params)
        crud_flash @article.save
        respond_with(@article)
      end

      def edit
        respond_with(@article)
      end

      def update
        crud_flash @article.update(article_params)
        respond_with(@article)
      end

      def destroy
        crud_flash @article.destroy
        respond_with(@article)
      end

      private

      def scope
        current_user.articles
      end

      def set_article
        @article = scope.find(params[:id])
      end

      def article_params
        params.require(:article).permit(:title, :body, :published)
      end
    end
  end
end
