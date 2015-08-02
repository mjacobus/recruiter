require "spec_helper"

describe Recruiter::JobsController, "routing", type: :routing do
  routes { Recruiter::Engine.routes }

  it "routes to #index" do
    expect(get('/jobs')).to route_to('recruiter/jobs#index')
    expect(get(jobs_path)).to route_to('recruiter/jobs#index')
  end

  it "routes to #show" do
    expect(get('jobs/1')).to route_to('recruiter/jobs#show', id: '1')
    expect(get(job_path(1))).to route_to('recruiter/jobs#show', id: '1')
  end
end
