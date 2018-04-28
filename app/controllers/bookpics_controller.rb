class BookpicsController < ApplicationController
  before_action :set_bookpic, only: [:show, :edit, :update, :destroy]

  # GET /bookpics
  # GET /bookpics.json
  def index
    @bookpics = Bookpic.all
  end

  # GET /bookpics/1
  # GET /bookpics/1.json
  def show
  end

  # GET /bookpics/new
  def new
    @bookpic = Bookpic.new
  end

  # GET /bookpics/1/edit
  def edit
  end

  # POST /bookpics
  # POST /bookpics.json
  def create
    @bookpic = Bookpic.new(bookpic_params)

    respond_to do |format|
      if @bookpic.save
        format.html { redirect_to @bookpic, notice: 'Bookpic was successfully created.' }
        format.json { render :show, status: :created, location: @bookpic }
      else
        format.html { render :new }
        format.json { render json: @bookpic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookpics/1
  # PATCH/PUT /bookpics/1.json
  def update
    respond_to do |format|
      if @bookpic.update(bookpic_params)
        format.html { redirect_to @bookpic, notice: 'Bookpic was successfully updated.' }
        format.json { render :show, status: :ok, location: @bookpic }
      else
        format.html { render :edit }
        format.json { render json: @bookpic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookpics/1
  # DELETE /bookpics/1.json
  def destroy
    @bookpic.destroy
    respond_to do |format|
      format.html { redirect_to bookpics_url, notice: 'Bookpic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookpic
      @bookpic = Bookpic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bookpic_params
      params.require(:bookpic).permit(:id, :name, :image)
    end
end
