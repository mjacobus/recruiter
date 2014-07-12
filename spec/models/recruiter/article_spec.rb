require 'spec_helper'

module Recruiter
  describe Article do
    it { should belong_to(:user) }
    it { should validate_presence_of(:user) }
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:body) }
  end
end
