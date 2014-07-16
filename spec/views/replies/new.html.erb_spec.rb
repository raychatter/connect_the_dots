require 'spec_helper'

describe "replies/new" do
  before(:each) do
    assign(:reply, stub_model(Reply,
      :content => "MyString",
      :micropost => nil,
      :user => nil
    ).as_new_record)
  end

  it "renders new reply form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", replies_path, "post" do
      assert_select "input#reply_content[name=?]", "reply[content]"
      assert_select "input#reply_micropost[name=?]", "reply[micropost]"
      assert_select "input#reply_user[name=?]", "reply[user]"
    end
  end
end
