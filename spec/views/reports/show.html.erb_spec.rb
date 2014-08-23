require 'spec_helper'

describe "reports/show" do
  before(:each) do
    @report = assign(:report, stub_model(Report,
      :user_id => 1,
      :url => "Url",
      :bad_behavior => false,
      :bad_host => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Url/)
    rendered.should match(/false/)
    rendered.should match(/false/)
  end
end
