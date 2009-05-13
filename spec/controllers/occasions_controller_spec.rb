require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe OccasionsController do

  def mock_occasion(stubs={})
    @mock_occasion ||= mock_model(Occasion, stubs)
  end
  
  describe "GET index" do
    it "assigns all occasions as @occasions" do
      Occasion.stub!(:find).with(:all).and_return([mock_occasion])
      get :index
      assigns[:occasions].should == [mock_occasion]
    end
  end

  describe "GET show" do
    it "assigns the requested occasion as @occasion" do
      Occasion.stub!(:find).with("37").and_return(mock_occasion)
      get :show, :id => "37"
      assigns[:occasion].should equal(mock_occasion)
    end
  end

  describe "GET new" do
    it "assigns a new occasion as @occasion" do
      Occasion.stub!(:new).and_return(mock_occasion)
      get :new
      assigns[:occasion].should equal(mock_occasion)
    end
  end

  describe "GET edit" do
    it "assigns the requested occasion as @occasion" do
      Occasion.stub!(:find).with("37").and_return(mock_occasion)
      get :edit, :id => "37"
      assigns[:occasion].should equal(mock_occasion)
    end
  end

  describe "POST create" do
    
    describe "with valid params" do
      it "assigns a newly created occasion as @occasion" do
        Occasion.stub!(:new).with({'these' => 'params'}).and_return(mock_occasion(:save => true))
        post :create, :occasion => {:these => 'params'}
        assigns[:occasion].should equal(mock_occasion)
      end

      it "redirects to the created occasion" do
        Occasion.stub!(:new).and_return(mock_occasion(:save => true))
        post :create, :occasion => {}
        response.should redirect_to(occasion_url(mock_occasion))
      end
    end
    
    describe "with invalid params" do
      it "assigns a newly created but unsaved occasion as @occasion" do
        Occasion.stub!(:new).with({'these' => 'params'}).and_return(mock_occasion(:save => false))
        post :create, :occasion => {:these => 'params'}
        assigns[:occasion].should equal(mock_occasion)
      end

      it "re-renders the 'new' template" do
        Occasion.stub!(:new).and_return(mock_occasion(:save => false))
        post :create, :occasion => {}
        response.should render_template('new')
      end
    end
    
  end

  describe "PUT update" do
    
    describe "with valid params" do
      it "updates the requested occasion" do
        Occasion.should_receive(:find).with("37").and_return(mock_occasion)
        mock_occasion.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :occasion => {:these => 'params'}
      end

      it "assigns the requested occasion as @occasion" do
        Occasion.stub!(:find).and_return(mock_occasion(:update_attributes => true))
        put :update, :id => "1"
        assigns[:occasion].should equal(mock_occasion)
      end

      it "redirects to the occasion" do
        Occasion.stub!(:find).and_return(mock_occasion(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(occasion_url(mock_occasion))
      end
    end
    
    describe "with invalid params" do
      it "updates the requested occasion" do
        Occasion.should_receive(:find).with("37").and_return(mock_occasion)
        mock_occasion.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :occasion => {:these => 'params'}
      end

      it "assigns the occasion as @occasion" do
        Occasion.stub!(:find).and_return(mock_occasion(:update_attributes => false))
        put :update, :id => "1"
        assigns[:occasion].should equal(mock_occasion)
      end

      it "re-renders the 'edit' template" do
        Occasion.stub!(:find).and_return(mock_occasion(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end
    
  end

  describe "DELETE destroy" do
    it "destroys the requested occasion" do
      Occasion.should_receive(:find).with("37").and_return(mock_occasion)
      mock_occasion.should_receive(:destroy)
      delete :destroy, :id => "37"
    end
  
    it "redirects to the occasions list" do
      Occasion.stub!(:find).and_return(mock_occasion(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(occasions_url)
    end
  end

end
