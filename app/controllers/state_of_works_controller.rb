class StateOfWorksController < ApplicationController
  before_action :set_state_of_work, only: %i[ show edit update destroy ]

  # GET /state_of_works or /state_of_works.json
  def index
    @state_of_works = StateOfWork.all
  end

  # GET /state_of_works/1 or /state_of_works/1.json
  def show
  end

  # GET /state_of_works/new
  def new
    @state_of_work = StateOfWork.new
  end

  # GET /state_of_works/1/edit
  def edit
  end

  # POST /state_of_works or /state_of_works.json
  def create
    @state_of_work = StateOfWork.new(state_of_work_params)

    respond_to do |format|
      if @state_of_work.save
        format.html { redirect_to state_of_work_url(@state_of_work), notice: "State of work was successfully created." }
        format.json { render :show, status: :created, location: @state_of_work }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @state_of_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /state_of_works/1 or /state_of_works/1.json
  def update
    respond_to do |format|
      if @state_of_work.update(state_of_work_params)
        format.html { redirect_to state_of_work_url(@state_of_work), notice: "State of work was successfully updated." }
        format.json { render :show, status: :ok, location: @state_of_work }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @state_of_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /state_of_works/1 or /state_of_works/1.json
  def destroy
    @state_of_work.destroy

    respond_to do |format|
      format.html { redirect_to state_of_works_url, notice: "State of work was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_state_of_work
      @state_of_work = StateOfWork.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def state_of_work_params
      params.require(:state_of_work).permit(:user_id, :state, :state_at)
    end
end
