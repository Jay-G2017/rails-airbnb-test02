class LensesController < ApplicationController
  before_action :set_lense, only: [:show, :edit, :update, :destroy]

  # GET /lenses
  def index
    @lenses = Lense.all
  end

  # GET /lenses/1
  def show
  end

  # GET /lenses/new
  def new
    @lense = Lense.new
  end

  # GET /lenses/1/edit
  def edit
  end

  # POST /lenses
  def create
    @lense = Lense.new(lense_params)

    if @lense.save
      redirect_to @lense, notice: 'Lense was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /lenses/1
  def update
    if @lense.update(lense_params)
      redirect_to @lense, notice: 'Lense was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /lenses/1
  def destroy
    @lense.destroy
    redirect_to lenses_url, notice: 'Lense was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lense
      @lense = Lense.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def lense_params
      params.require(:lense).permit(:name, :user_id)
    end
end
