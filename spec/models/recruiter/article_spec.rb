require 'spec_helper'

module Recruiter
  describe Article do
    it { should belong_to(:user) }
    it { should validate_presence_of(:user) }
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:body) }

    it 'has url frield url' do
      subject.id = 1
      subject.title = 'Foo Article'
      expect(subject.to_param).to eq('1-foo-article')
    end
  end
end
