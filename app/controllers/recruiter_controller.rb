class RecruiterController  < ApplicationController
  include Recruiter::CrudFlashMessagerHelper

  def page
    params[:page]
  end

  def per_page
    params[:per_page]
  end
end
