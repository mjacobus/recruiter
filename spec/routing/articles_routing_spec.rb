require "spec_helper"

describe Recruiter::ArticlesController, "routing", type: :routing do
  routes { Recruiter::Engine.routes }

  it "routes to #index" do
    expect(get('/articles')).to route_to('recruiter/articles#index')
    expect(get(articles_path)).to route_to('recruiter/articles#index')
  end

  it "routes to #show" do
    expect(get('articles/1')).to route_to('recruiter/articles#show', id: '1')
    expect(get(article_path(1))).to route_to('recruiter/articles#show', id: '1')
  end
end
