class CollegeRegistrationsController < ApplicationController
  before_action :set_college_registration, only: [:show, :edit, :update, :destroy]

  # GET /college_registrations
  # GET /college_registrations.json
  def index
    @college_registrations = CollegeRegistration.all
  end

  # GET /college_registrations/1
  # GET /college_registrations/1.json
  def show
  end

  # GET /college_registrations/new
  def new
    @college_registration = CollegeRegistration.new
  end

  # GET /college_registrations/1/edit
  def edit
  end

  # POST /college_registrations
  # POST /college_registrations.json
  def create
    @college_registration = CollegeRegistration.new(college_registration_params)

    respond_to do |format|
      if @college_registration.save
        format.html { redirect_to @college_registration, notice: 'College registration was successfully created.' }
        format.json { render :show, status: :created, location: @college_registration }
      else
        format.html { render :new }
        format.json { render json: @college_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /college_registrations/1
  # PATCH/PUT /college_registrations/1.json
  def update
    respond_to do |format|
      if @college_registration.update(college_registration_params)
        format.html { redirect_to @college_registration, notice: 'College registration was successfully updated.' }
        format.json { render :show, status: :ok, location: @college_registration }
      else
        format.html { render :edit }
        format.json { render json: @college_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /college_registrations/1
  # DELETE /college_registrations/1.json
  def destroy
    @college_registration.destroy
    respond_to do |format|
      format.html { redirect_to college_registrations_url, notice: 'College registration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_college_registration
      @college_registration = CollegeRegistration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def college_registration_params
      params.require(:college_registration).permit(:name, :description, :adress, :phone, :email, :college_type)
    end
end
