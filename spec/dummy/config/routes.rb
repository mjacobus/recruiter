Rails.application.routes.draw do
  root to: 'recruiter/jobs#index'
  mount Recruiter::Engine => "/"
end
