class AdsController < ApplicationController
  before_action :set_ad, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /ads
  # GET /ads.json
  def index
   redirect_to root_path
  end

  # GET /ads/1
  # GET /ads/1.json
  def show
  end

  # GET /ads/new
  def new
    @ad = Ad.new
  end

  # GET /ads/1/edit
  def edit
  end

  # POST /ads
  # POST /ads.json
  def create
    @ad = Ad.new(ad_params.except(:image))
    @ad.user = current_user
    picture = Picture.new
    picture.ad = @ad
    picture.image = params[:ad][:image]
    picture.save
    respond_to do |format|
      if @ad.save
        format.html { redirect_to ad_path(@ad.id), notice: 'Ad was successfully created.' }
        format.json { render :show, status: :created, location: @ad }
      else
        format.html {
          #flash[:notice] = @ad.errors.messages
          render 'new'
        }
        format.json { render json: @ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ads/1
  # PATCH/PUT /ads/1.json
  def update

    respond_to do |format|
      if @ad.update(ad_params)
        format.html { redirect_to @ad }
        format.json { render :show, status: :ok, location: @ad }
      else
        format.html { render 'edit' }
        format.json { render json: @ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ads/1
  # DELETE /ads/1.json
  def destroy
    @ad.destroy
    respond_to do |format|
      format.html { redirect_to root_path , notice: 'Ad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ad
      @ad = Ad.find(params[:id])
    end

    def ad_params
      params.require(:ad).permit( :real_estate_type, :image, :square , :rooms , :adress ,:second_adress ,:price_per_day , :rent_limit_days)
    end
end
