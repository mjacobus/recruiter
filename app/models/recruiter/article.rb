module Recruiter
  class Article < ActiveRecord::Base
    belongs_to :user
    validates :title, presence: true
    validates :user, presence: true
    validates :body, presence: true
  end
end
