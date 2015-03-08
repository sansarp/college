require 'rails_helper'


RSpec.describe CollegeRegistrationsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # CollegeApply. As you add validations to CollegeApply, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    FactoryGirl.attributes_for(:college_registration)
  }

  let(:invalid_attributes) {
    # skip("Add a hash of attributes invalid for your model")
   # name: nil
   # FactoryGirl.attributes_for(:college_registration)
   {
     'name' => '',
     'description' => ''
   }

  }


  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CollegeAppliesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe 'GET index' do
    it "assigns all college_registrations as @college_registrations" do
      college_registration = CollegeRegistration.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:college_registrations)).to eq([college_registration])
    end
  end

  describe 'GET show' do
    it "assigns the requested college_registration as @college_registration" do
      college_registration = CollegeRegistration.create! valid_attributes
      get :show, { id: college_registration.to_param}, valid_session
      expect(assigns(:college_registration)).to eq(college_registration)
    end
  end

  describe 'GET new' do
    it "assigns a new college_registration as @college_registration" do
      get :new, {}, valid_session
      expect(assigns(:college_registration)).to be_a_new(CollegeRegistration)
    end
  end

  describe "GET edit" do
    it "assigns the requested college_registration as @college_registration" do
      college_registration = CollegeRegistration.create! valid_attributes
      get :edit, { id: college_registration.to_param}, valid_session
      expect(assigns(:college_registration)).to eq(college_registration)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new CollegeRegistration" do
        expect {
          post :create, { college_registration: valid_attributes}, valid_session
        }.to change(CollegeRegistration, :count).by(1)
      end

      it "assigns a newly created college_registration as @college_registration" do
        post :create, { college_registration: valid_attributes}, valid_session
        expect(assigns(:college_registration)).to be_a(CollegeRegistration)
        expect(assigns(:college_registration)).to be_persisted
      end

      it "redirects to the created college_registration" do
        post :create, {college_registration: valid_attributes}, valid_session
        expect(response).to redirect_to(CollegeRegistration.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved college_registration as @college_registration" do
        post :create, {college_registration: invalid_attributes}, valid_session
        expect(assigns(:college_registration)).to be_a_new(CollegeRegistration)
      end

      it "re-renders the 'new' template" do
        post :create, {college_registration: invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        # skip("Add a hash of attributes valid for your model")
        # FactoryGirl.attributes_for(:college_registration)
        {
         'name' => 'subash',
         'description' => 'some description'
        }
      }

      it "updates the requested college_registration" do
        college_registration = CollegeRegistration.create! valid_attributes
        put :update, { id: college_registration.to_param, :college_registration => new_attributes}, valid_session
        college_registration.reload
        # skip("Add assertions for updated state")
      end

      it "assigns the requested college_registration as @college_registration" do
        college_registration = CollegeRegistration.create! valid_attributes
        put :update, {:id => college_registration.to_param, :college_registration => valid_attributes}, valid_session
        expect(assigns(:college_registration)).to eq(college_registration)
      end

      it "redirects to the college_registration" do
        college_registration = CollegeRegistration.create! valid_attributes
        put :update, {:id => college_registration.to_param, :college_registration => valid_attributes}, valid_session
        expect(response).to redirect_to(college_registration)
      end
    end

    describe "with invalid params" do
      it "assigns the college_registration as @college_registration" do
        college_registration = CollegeRegistration.create! valid_attributes
        put :update, {:id => college_registration.to_param, :college_registration => invalid_attributes}, valid_session
        expect(assigns(:college_registration)).to eq(college_registration)
      end

      it "re-renders the 'edit' template" do
        college_registration = CollegeRegistration.create! valid_attributes
        put :update, {:id => college_registration.to_param, :college_registration => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested college_registration" do
      college_registration = CollegeRegistration.create! valid_attributes
      expect {
        delete :destroy, {:id => college_registration.to_param}, valid_session
      }.to change(CollegeRegistration, :count).by(-1)
    end

    it "redirects to the college_registrations list" do
      college_registration = CollegeRegistration.create! valid_attributes
      delete :destroy, {:id => college_registration.to_param}, valid_session
      expect(response).to redirect_to(college_registrations_url)
    end
  end

end
