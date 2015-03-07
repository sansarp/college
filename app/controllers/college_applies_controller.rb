class CollegeAppliesController < ApplicationController
  before_action :set_college_apply, only: [:show, :edit, :update, :destroy]

  # GET /college_applies
  # GET /college_applies.json
  def index
    @college_applies = CollegeApply.all
  end

  # GET /college_applies/1
  # GET /college_applies/1.json
  def show
  end

  # GET /college_applies/new
  def new
    @college_apply = CollegeApply.new
  end

  # GET /college_applies/1/edit
  def edit
  end

  # POST /college_applies
  # POST /college_applies.json
  def create
    @college_apply = CollegeApply.new(college_apply_params)

    respond_to do |format|
      if @college_apply.save
        format.html { redirect_to @college_apply, notice: 'College apply was successfully created.' }
        format.json { render :show, status: :created, location: @college_apply }
      else
        format.html { render :new }
        format.json { render json: @college_apply.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /college_applies/1
  # PATCH/PUT /college_applies/1.json
  def update
    respond_to do |format|
      if @college_apply.update(college_apply_params)
        format.html { redirect_to @college_apply, notice: 'College apply was successfully updated.' }
        format.json { render :show, status: :ok, location: @college_apply }
      else
        format.html { render :edit }
        format.json { render json: @college_apply.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /college_applies/1
  # DELETE /college_applies/1.json
  def destroy
    @college_apply.destroy
    respond_to do |format|
      format.html { redirect_to college_applies_url, notice: 'College apply was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_college_apply
      @college_apply = CollegeApply.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def college_apply_params
      params.require(:college_apply).permit(:name, :course, :college_session, :apply_date)
    end
end
