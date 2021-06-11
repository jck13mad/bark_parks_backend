class DogFilesController < ApplicationController
  before_action :set_dog_file, only: %i[ show edit update destroy ]

  # GET /dog_files or /dog_files.json
  def index
    @dog_files = DogFile.all
  end

  # GET /dog_files/1 or /dog_files/1.json
  def show
  end

  # GET /dog_files/new
  def new
    @dog_file = DogFile.new
  end

  # GET /dog_files/1/edit
  def edit
  end

  # POST /dog_files or /dog_files.json
  def create
    @dog_file = DogFile.new(dog_file_params)

    respond_to do |format|
      if @dog_file.save
        format.html { redirect_to @dog_file, notice: "Dog file was successfully created." }
        format.json { render :show, status: :created, location: @dog_file }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dog_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dog_files/1 or /dog_files/1.json
  def update
    respond_to do |format|
      if @dog_file.update(dog_file_params)
        format.html { redirect_to @dog_file, notice: "Dog file was successfully updated." }
        format.json { render :show, status: :ok, location: @dog_file }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dog_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dog_files/1 or /dog_files/1.json
  def destroy
    @dog_file.destroy
    respond_to do |format|
      format.html { redirect_to dog_files_url, notice: "Dog file was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dog_file
      @dog_file = DogFile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dog_file_params
      params.require(:dog_file).permit(:name, :user_id, :sex, :weight, :age, :breed)
    end
end
