class SliderimagesController < ApplicationController
  before_action :set_sliderimage, only: [:show, :edit, :update, :destroy]

  # GET /sliderimages
  # GET /sliderimages.json
  def index
    @sliderimages = Sliderimage.all
  end

  # GET /sliderimages/1
  # GET /sliderimages/1.json
  def show
  end

  # GET /sliderimages/new
  def new
    @sliderimage = Sliderimage.new
  end

  # GET /sliderimages/1/edit
  def edit
  end

  # POST /sliderimages
  # POST /sliderimages.json
  def create
    @sliderimage = Sliderimage.new(sliderimage_params)

    respond_to do |format|
      if @sliderimage.save
        format.html { redirect_to @sliderimage, notice: 'Sliderimage was successfully created.' }
        format.json { render :show, status: :created, location: @sliderimage }
      else
        format.html { render :new }
        format.json { render json: @sliderimage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sliderimages/1
  # PATCH/PUT /sliderimages/1.json
  def update
    respond_to do |format|
      if @sliderimage.update(sliderimage_params)
        format.html { redirect_to @sliderimage, notice: 'Sliderimage was successfully updated.' }
        format.json { render :show, status: :ok, location: @sliderimage }
      else
        format.html { render :edit }
        format.json { render json: @sliderimage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sliderimages/1
  # DELETE /sliderimages/1.json
  def destroy
    @sliderimage.destroy
    respond_to do |format|
      format.html { redirect_to sliderimages_url, notice: 'Sliderimage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sliderimage
      @sliderimage = Sliderimage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sliderimage_params
      params.require(:sliderimage).permit(:title, :caption, :url, :picture)
    end
end
