require 'spec_helper'

describe "events/show" do
  before(:each) do
    @event = assign(:event, stub_model(Event,
      :owner => 1,
      :console => "Console",
      :players => 2,
      :category_id => 3,
      :title => "Title",
      :description => "MyText",
      :image => "Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Console/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/Image/)
  end
end
