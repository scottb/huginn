require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/occasions/new.html.erb" do
  include OccasionsHelper
  
  before(:each) do
    assigns[:occasion] = stub_model(Occasion,
      :new_record? => true,
      :name => "value for name"
    )
  end

  it "renders new occasion form" do
    render
    
    response.should have_tag("form[action=?][method=post]", occasions_path) do
      with_tag("input#occasion_name[name=?]", "occasion[name]")
    end
  end
end


