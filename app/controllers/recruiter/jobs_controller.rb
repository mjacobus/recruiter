module Recruiter
  class JobsController < ::RecruiterController
    respond_to :html, :json

    def index
      @jobs = ::Recruiter::Filters::JobFilter.filter(filter_params).
        open.page(page).per(per_page)

      respond_with(@jobs)
    end

    def show
      @job = Job.find(params[:id])
      respond_with(@job)
    end

    private

    def filter_params
      params.select { |k, v| v.present? }
    end
  end
end
