require 'spec_helper'

describe "events/index" do
  before(:each) do
    assign(:events, [
      stub_model(Event,
        :owner => 1,
        :console => "Console",
        :players => 2,
        :category_id => 3,
        :title => "Title",
        :description => "MyText",
        :image => "Image"
      ),
      stub_model(Event,
        :owner => 1,
        :console => "Console",
        :players => 2,
        :category_id => 3,
        :title => "Title",
        :description => "MyText",
        :image => "Image"
      )
    ])
  end

  it "renders a list of events" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Console".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end
