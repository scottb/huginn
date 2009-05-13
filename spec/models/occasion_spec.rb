require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Occasion do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :start_date => Date.today
    }
  end

  it "should create a new instance given valid attributes" do
    Occasion.create!(@valid_attributes)
  end
end
