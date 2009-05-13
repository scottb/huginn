require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/occasions/index.html.erb" do
  include OccasionsHelper
  
  before(:each) do
    assigns[:occasions] = [
      stub_model(Occasion,
        :name => "value for name"
      ),
      stub_model(Occasion,
        :name => "value for name"
      )
    ]
  end

  it "renders a list of occasions" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
  end
end

