module Recruiter
  class HomeController < ::RecruiterController
    def index
      @jobs = Job.open.limit(5)
      @articles = Article.published.limit(5)
    end
  end
end
