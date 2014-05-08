require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe MutantsController do

  # This should return the minimal set of attributes required to create a valid
  # Mutant. As you add validations to Mutant, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString", "country" => "Italy" } }
  let(:valid_team_attributes) { { "name" => 'team', "description" => "description" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # MutantsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all mutants as @mutants" do
      team_1 = Team.create! valid_team_attributes
      team_2 = Team.create! valid_team_attributes
      team_3 = Team.create! valid_team_attributes
      mutant_1 = Mutant.create! valid_attributes.merge({"team" => team_1})
      mutant_2 = Mutant.create! valid_attributes.merge({"team" => team_2})
      mutant_3 = Mutant.create! valid_attributes.merge({"team" => team_3})
      # Get index without team_id
      get :index, {}, valid_session
      assigns(:mutants).should eq([mutant_1, mutant_2, mutant_3])
      # Get index with team_id
      get :index, {:team_id => team_1.id}, valid_session
      assigns(:mutants).should eq([mutant_1])
    end
  end

  describe "GET show" do
    it "assigns the requested mutant as @mutant" do
      mutant = Mutant.create! valid_attributes
      get :show, {:id => mutant.to_param}, valid_session
      assigns(:mutant).should eq(mutant)
    end
  end

  describe "GET new" do
    it "assigns a new mutant as @mutant" do
      get :new, {}, valid_session
      assigns(:mutant).should be_a_new(Mutant)
    end
  end

  describe "GET edit" do
    it "assigns the requested mutant as @mutant" do
      mutant = Mutant.create! valid_attributes
      get :edit, {:id => mutant.to_param}, valid_session
      assigns(:mutant).should eq(mutant)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Mutant" do
        expect {
          post :create, {:mutant => valid_attributes}, valid_session
        }.to change(Mutant, :count).by(1)
      end

      it "assigns a newly created mutant as @mutant" do
        post :create, {:mutant => valid_attributes}, valid_session
        assigns(:mutant).should be_a(Mutant)
        assigns(:mutant).should be_persisted
      end

      it "redirects to the created mutant" do
        post :create, {:mutant => valid_attributes}, valid_session
        response.should redirect_to(Mutant.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved mutant as @mutant" do
        # Trigger the behavior that occurs when invalid params are submitted
        Mutant.any_instance.stub(:save).and_return(false)
        post :create, {:mutant => { "name" => "invalid value" }}, valid_session
        assigns(:mutant).should be_a_new(Mutant)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Mutant.any_instance.stub(:save).and_return(false)
        post :create, {:mutant => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested mutant" do
        mutant = Mutant.create! valid_attributes
        # Assuming there are no other mutants in the database, this
        # specifies that the Mutant created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Mutant.any_instance.should_receive(:update).with({ "name" => "MyString" })
        put :update, {:id => mutant.to_param, :mutant => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested mutant as @mutant" do
        mutant = Mutant.create! valid_attributes
        put :update, {:id => mutant.to_param, :mutant => valid_attributes}, valid_session
        assigns(:mutant).should eq(mutant)
      end

      it "redirects to the mutant" do
        mutant = Mutant.create! valid_attributes
        put :update, {:id => mutant.to_param, :mutant => valid_attributes}, valid_session
        response.should redirect_to(mutant)
      end
    end

    describe "with invalid params" do
      it "assigns the mutant as @mutant" do
        mutant = Mutant.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Mutant.any_instance.stub(:save).and_return(false)
        put :update, {:id => mutant.to_param, :mutant => { "name" => "invalid value" }}, valid_session
        assigns(:mutant).should eq(mutant)
      end

      it "re-renders the 'edit' template" do
        mutant = Mutant.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Mutant.any_instance.stub(:save).and_return(false)
        put :update, {:id => mutant.to_param, :mutant => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested mutant" do
      mutant = Mutant.create! valid_attributes
      expect {
        delete :destroy, {:id => mutant.to_param}, valid_session
      }.to change(Mutant, :count).by(-1)
    end

    it "redirects to the mutants list" do
      mutant = Mutant.create! valid_attributes
      delete :destroy, {:id => mutant.to_param}, valid_session
      response.should redirect_to(mutants_url)
    end
  end

end
