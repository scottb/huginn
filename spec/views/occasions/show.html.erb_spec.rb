require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/occasions/show.html.erb" do
  include OccasionsHelper
  before(:each) do
    assigns[:occasion] = @occasion = stub_model(Occasion,
      :name => "value for name"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
  end
end

