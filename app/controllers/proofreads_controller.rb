class ProofreadsController < ApplicationController
  before_action :set_proofread, only: [:show, :edit, :update, :destroy]

  # GET /proofreads
  # GET /proofreads.json
  def index
    @proofreads = Proofread.all
  end

  # GET /proofreads/1
  # GET /proofreads/1.json
  def show
  end

  # GET /proofreads/new
  def new
    @proofread = Proofread.new
  end

  # GET /proofreads/1/edit
  def edit
  end

  # POST /proofreads
  # POST /proofreads.json
  def create
    @proofread = Proofread.new(proofread_params)
    @path = "./app/assets/files/#{@proofread.title}.html"
    File.open(@path, "w") do |f| 
      f.puts(@proofread.content)
      f.puts(@proofread.edited)
      f.close
    end
    redirect_to proofreads_url
  end

  # PATCH/PUT /proofreads/1
  # PATCH/PUT /proofreads/1.json
  def update
    respond_to do |format|
      if @proofread.update(proofread_params)
        format.html { redirect_to @proofread, notice: 'Proofread was successfully updated.' }
        format.json { render :show, status: :ok, location: @proofread }
      else
        format.html { render :edit }
        format.json { render json: @proofread.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proofreads/1
  # DELETE /proofreads/1.json
  def destroy
    @proofread.destroy
    respond_to do |format|
      format.html { redirect_to proofreads_url, notice: 'Proofread was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proofread
      @proofread = Proofread.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proofread_params
      params.require(:proofread).permit(:title, :content, :edited)
    end
end
