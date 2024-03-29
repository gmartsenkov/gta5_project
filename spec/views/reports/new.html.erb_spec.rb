require 'spec_helper'

describe "reports/new" do
  before(:each) do
    assign(:report, stub_model(Report,
      :user_id => 1,
      :url => "MyString",
      :bad_behavior => false,
      :bad_host => false
    ).as_new_record)
  end

  it "renders new report form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => reports_path, :method => "post" do
      assert_select "input#report_user_id", :name => "report[user_id]"
      assert_select "input#report_url", :name => "report[url]"
      assert_select "input#report_bad_behavior", :name => "report[bad_behavior]"
      assert_select "input#report_bad_host", :name => "report[bad_host]"
    end
  end
end
