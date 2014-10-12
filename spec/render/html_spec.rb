require 'spec_helper'

describe Recruiter::Render::HTML do
  it 'inherits from Redcarpet::Render::HTML' do
    expect(subject).to be_a Redcarpet::Render::HTML
  end

  describe "#block_code" do
    it "returns a text highlighted text" do
      div = '<div>puts "foo"</div>'
      rendered = subject.block_code(div, lexer: "ruby")
      expect(rendered).to match('style')
    end
  end
end
