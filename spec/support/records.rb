module Records
  extend ActiveSupport::Concern

  included do
    let(:admin)  { Recruiter::User.make!(admin: true) }
    let(:user)   { Recruiter::User.make! }
    let(:user2)  { Recruiter::User.make! }
    let(:user3)  { Recruiter::User.make! }

    let(:city) { Recruiter::City.make! }
    let(:state) { city.state }
  end
end
