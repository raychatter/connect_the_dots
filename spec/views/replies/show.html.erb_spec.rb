require 'spec_helper'

describe "replies/show" do
  before(:each) do
    @reply = assign(:reply, stub_model(Reply,
      :content => "Content",
      :micropost => nil,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Content/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
