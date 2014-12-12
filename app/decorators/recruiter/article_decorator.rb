module Recruiter
  class ArticleDecorator < Draper::Decorator
    include Recruiter::DecoratorHelper

    delegate_all

    def published?
      decorate_boolean(object.published?)
    end

    def published_at
      "TODO: published at"
    end
  end
end
