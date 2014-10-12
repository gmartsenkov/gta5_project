class DefaultAvatarsController < ApplicationController
  before_action :set_default_avatar, only: [:show, :edit, :update, :destroy]

  # GET /default_avatars
  # GET /default_avatars.json
  def index
    @default_avatars = DefaultAvatar.all
  end

  # GET /default_avatars/1
  # GET /default_avatars/1.json
  def show
  end

  # GET /default_avatars/new
  def new
    @default_avatar = DefaultAvatar.new
  end

  # GET /default_avatars/1/edit
  def edit
  end

  # POST /default_avatars
  # POST /default_avatars.json
  def create
    @default_avatar = DefaultAvatar.new(default_avatar_params)

    respond_to do |format|
      if @default_avatar.save
        format.html { redirect_to @default_avatar, notice: 'Default avatar was successfully created.' }
        format.json { render action: 'show', status: :created, location: @default_avatar }
      else
        format.html { render action: 'new' }
        format.json { render json: @default_avatar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /default_avatars/1
  # PATCH/PUT /default_avatars/1.json
  def update
    respond_to do |format|
      if @default_avatar.update(default_avatar_params)
        format.html { redirect_to @default_avatar, notice: 'Default avatar was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @default_avatar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /default_avatars/1
  # DELETE /default_avatars/1.json
  def destroy
    @default_avatar.destroy
    respond_to do |format|
      format.html { redirect_to default_avatars_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_default_avatar
      @default_avatar = DefaultAvatar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def default_avatar_params
      params.require(:default_avatar).permit(:avatar_default)
    end
end
