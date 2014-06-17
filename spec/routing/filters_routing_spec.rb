require "spec_helper"

describe Recruiter::FiltersController do
  routes { Recruiter::Engine.routes }

  it "routes to #index" do
    expect(get('/filters')).to route_to('recruiter/filters#index')
    expect(get(filters_path)).to route_to('recruiter/filters#index')
  end
end
