require 'spec_helper'

describe "default_avatars/edit" do
  before(:each) do
    @default_avatar = assign(:default_avatar, stub_model(DefaultAvatar,
      :avatar_default => "MyString"
    ))
  end

  it "renders the edit default_avatar form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => default_avatars_path(@default_avatar), :method => "post" do
      assert_select "input#default_avatar_avatar_default", :name => "default_avatar[avatar_default]"
    end
  end
end
