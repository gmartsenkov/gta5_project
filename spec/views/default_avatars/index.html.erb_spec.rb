require 'spec_helper'

describe "default_avatars/index" do
  before(:each) do
    assign(:default_avatars, [
      stub_model(DefaultAvatar,
        :avatar_default => "Avatar Default"
      ),
      stub_model(DefaultAvatar,
        :avatar_default => "Avatar Default"
      )
    ])
  end

  it "renders a list of default_avatars" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Avatar Default".to_s, :count => 2
  end
end
