require 'spec_helper'

describe "default_avatars/new" do
  before(:each) do
    assign(:default_avatar, stub_model(DefaultAvatar,
      :avatar_default => "MyString"
    ).as_new_record)
  end

  it "renders new default_avatar form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => default_avatars_path, :method => "post" do
      assert_select "input#default_avatar_avatar_default", :name => "default_avatar[avatar_default]"
    end
  end
end
