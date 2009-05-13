require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe OccasionsController do
  describe "route generation" do
    it "maps #index" do
      route_for(:controller => "occasions", :action => "index").should == "/occasions"
    end
  
    it "maps #new" do
      route_for(:controller => "occasions", :action => "new").should == "/occasions/new"
    end
  
    it "maps #show" do
      route_for(:controller => "occasions", :action => "show", :id => "1").should == "/occasions/1"
    end
  
    it "maps #edit" do
      route_for(:controller => "occasions", :action => "edit", :id => "1").should == "/occasions/1/edit"
    end

  it "maps #create" do
    route_for(:controller => "occasions", :action => "create").should == {:path => "/occasions", :method => :post}
  end

  it "maps #update" do
    route_for(:controller => "occasions", :action => "update", :id => "1").should == {:path =>"/occasions/1", :method => :put}
  end
  
    it "maps #destroy" do
      route_for(:controller => "occasions", :action => "destroy", :id => "1").should == {:path =>"/occasions/1", :method => :delete}
    end
  end

  describe "route recognition" do
    it "generates params for #index" do
      params_from(:get, "/occasions").should == {:controller => "occasions", :action => "index"}
    end
  
    it "generates params for #new" do
      params_from(:get, "/occasions/new").should == {:controller => "occasions", :action => "new"}
    end
  
    it "generates params for #create" do
      params_from(:post, "/occasions").should == {:controller => "occasions", :action => "create"}
    end
  
    it "generates params for #show" do
      params_from(:get, "/occasions/1").should == {:controller => "occasions", :action => "show", :id => "1"}
    end
  
    it "generates params for #edit" do
      params_from(:get, "/occasions/1/edit").should == {:controller => "occasions", :action => "edit", :id => "1"}
    end
  
    it "generates params for #update" do
      params_from(:put, "/occasions/1").should == {:controller => "occasions", :action => "update", :id => "1"}
    end
  
    it "generates params for #destroy" do
      params_from(:delete, "/occasions/1").should == {:controller => "occasions", :action => "destroy", :id => "1"}
    end
  end
end
