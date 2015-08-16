require "spec_helper"

describe Recruiter::HomeController, "routing", type: :routing do
  routes { Recruiter::Engine.routes }

  it "routes to #index" do
    expect(get('/')).to route_to('recruiter/home#index')
    expect(get(root_path)).to route_to('recruiter/home#index')
  end
end
