require 'spec_helper'

describe "default_avatars/show" do
  before(:each) do
    @default_avatar = assign(:default_avatar, stub_model(DefaultAvatar,
      :avatar_default => "Avatar Default"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Avatar Default/)
  end
end
