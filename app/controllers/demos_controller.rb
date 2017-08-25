class DemosController < ApplicationController
  before_action :set_demo, only: [:show, :edit, :update, :destroy]

  # GET /demos
  # GET /demos.json
  def index
    @demos = Demo.all
  end

  # GET /demos/1
  # GET /demos/1.json
  def show
  end

  # GET /demos/new
  def new
    @demo = Demo.new
  end

  # GET /demos/1/edit
  def edit
  end

  # POST /demos
  # POST /demos.json
  def create
    @demo = Demo.new(demo_params)

    respond_to do |format|
      if @demo.save
        format.html { redirect_to @demo, notice: 'Demo was successfully created.' }
        format.json { render :show, status: :created, location: @demo }
      else
        format.html { render :new }
        format.json { render json: @demo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /demos/1
  # PATCH/PUT /demos/1.json
  def update
    respond_to do |format|
      if @demo.update(demo_params)
        format.html { redirect_to @demo, notice: 'Demo was successfully updated.' }
        format.json { render :show, status: :ok, location: @demo }
      else
        format.html { render :edit }
        format.json { render json: @demo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /demos/1
  # DELETE /demos/1.json
  def destroy
    @demo.destroy
    respond_to do |format|
      format.html { redirect_to demos_url, notice: 'Demo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_demo
      @demo = Demo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def demo_params
      params.require(:demo).permit(:title, :body)
    end
end
