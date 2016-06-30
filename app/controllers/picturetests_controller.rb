class PicturetestsController < ApplicationController
  before_action :set_picturetest, only: [:show, :edit, :update, :destroy]

  # GET /picturetests
  # GET /picturetests.json
  def index
    @picturetests = Picturetest.all
  end

  # GET /picturetests/1
  # GET /picturetests/1.json
  def show
  end

  # GET /picturetests/new
  def new
    @picturetest = Picturetest.new
  end

  # GET /picturetests/1/edit
  def edit
  end

  # POST /picturetests
  # POST /picturetests.json
  def create
    @picturetest = Picturetest.new(picturetest_params)

    respond_to do |format|
      if @picturetest.save
        format.html { redirect_to @picturetest, notice: 'Picturetest was successfully created.' }
        format.json { render :show, status: :created, location: @picturetest }
      else
        format.html { render :new }
        format.json { render json: @picturetest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /picturetests/1
  # PATCH/PUT /picturetests/1.json
  def update
    respond_to do |format|
      if @picturetest.update(picturetest_params)
        format.html { redirect_to @picturetest, notice: 'Picturetest was successfully updated.' }
        format.json { render :show, status: :ok, location: @picturetest }
      else
        format.html { render :edit }
        format.json { render json: @picturetest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /picturetests/1
  # DELETE /picturetests/1.json
  def destroy
    @picturetest.destroy
    respond_to do |format|
      format.html { redirect_to picturetests_url, notice: 'Picturetest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def test
    @picturetests = Picturetest.page(params[:page]).per(1)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_picturetest
      @picturetest = Picturetest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def picturetest_params
      params.require(:picturetest).permit(:hint, :picture, :picture_cache, :answer)
    end
end
