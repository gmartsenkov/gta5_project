require 'spec_helper'

describe "events/edit" do
  before(:each) do
    @event = assign(:event, stub_model(Event,
      :owner => 1,
      :console => "MyString",
      :players => 1,
      :category_id => 1,
      :title => "MyString",
      :description => "MyText",
      :image => "MyString"
    ))
  end

  it "renders the edit event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => events_path(@event), :method => "post" do
      assert_select "input#event_owner", :name => "event[owner]"
      assert_select "input#event_console", :name => "event[console]"
      assert_select "input#event_players", :name => "event[players]"
      assert_select "input#event_category_id", :name => "event[category_id]"
      assert_select "input#event_title", :name => "event[title]"
      assert_select "textarea#event_description", :name => "event[description]"
      assert_select "input#event_image", :name => "event[image]"
    end
  end
end
