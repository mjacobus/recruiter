class RecruiterController  < ApplicationController
  include Recruiter::CrudFlashMessagerHelper

  layout 'recruiter/application'

  def page
    params[:page]
  end

  def per_page
    params[:per_page]
  end
end
