class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update]
  before_action :authenticate_user!
  # GET /profiles
  # GET /profiles.json
  def index
    redirect_to root_path
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
  end


  # GET /profiles/1/edit
  def edit
  end


  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    puts "KOKOKO"
    puts profile_params.inspect
    puts "sss\n\n\n" + params.inspect
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to profile_path(@profile.id)}
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:user).permit(:id,:firstname, :lastname, :phone_number)
    end
end
