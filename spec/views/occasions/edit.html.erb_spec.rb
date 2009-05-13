require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/occasions/edit.html.erb" do
  include OccasionsHelper
  
  before(:each) do
    assigns[:occasion] = @occasion = stub_model(Occasion,
      :new_record? => false,
      :name => "value for name"
    )
  end

  it "renders the edit occasion form" do
    render
    
    response.should have_tag("form[action=#{occasion_path(@occasion)}][method=post]") do
      with_tag('input#occasion_name[name=?]', "occasion[name]")
    end
  end
end


