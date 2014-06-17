require "spec_helper"

describe Recruiter::JobsController, "routing" do
  routes { Recruiter::Engine.routes }

  it "routes to #index" do
    expect(get('/')).to route_to('recruiter/jobs#index')
  end

  it "routes to #show" do
    expect(get('jobs/1')).to route_to('recruiter/jobs#show', id: '1')
    expect(get(offer_path(1))).to route_to('recruiter/jobs#show', id: '1')
  end
end
