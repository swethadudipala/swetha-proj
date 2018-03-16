class MyFormsController < ApplicationController
  before_action :set_my_form, only: [:show, :edit, :update, :destroy]

  # GET /my_forms
  # GET /my_forms.json
  def index
    @my_forms = MyForm.all
  end

  # GET /my_forms/1
  # GET /my_forms/1.json
  def show
  end

  # GET /my_forms/new
  def new
    @my_form = MyForm.new
  end

  # GET /my_forms/1/edit
  def edit
  end

  # POST /my_forms
  # POST /my_forms.json
  def create
    @my_form = MyForm.new(my_form_params)

    respond_to do |format|
      if @my_form.save
        format.html { redirect_to @my_form, notice: 'My form was successfully created.' }
        format.json { render :show, status: :created, location: @my_form }
      else
        format.html { render :new }
        format.json { render json: @my_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_forms/1
  # PATCH/PUT /my_forms/1.json
  def update
    respond_to do |format|
      if @my_form.update(my_form_params)
        format.html { redirect_to @my_form, notice: 'My form was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_form }
      else
        format.html { render :edit }
        format.json { render json: @my_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_forms/1
  # DELETE /my_forms/1.json
  def destroy
    @my_form.destroy
    respond_to do |format|
      format.html { redirect_to my_forms_url, notice: 'My form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_form
      @my_form = MyForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_form_params
      params.require(:my_form).permit(:name, :gender, :category, :date, :subjects, :address)
    end
end
