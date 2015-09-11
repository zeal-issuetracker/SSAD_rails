class ProjsController < ApplicationController
  before_action :set_proj, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user! , except: [:index , :show]
  # GET /projs
  # GET /projs.json
  def index
    @projs = Proj.all
  end

  # GET /projs/1
  # GET /projs/1.json
  def show
  end

  # GET /projs/new
  def new
    @proj = current_user.projs.build
  end

  # GET /projs/1/edit
  def edit
  end

  # POST /projs
  # POST /projs.json
  def create
    @proj = current_user.projs.build(proj_params)

# @proj.owner =current_user.id assigns current user as the owner of the project being created

    @proj.owner=current_user.id
    @users = User.where(:id => params[:add_user])

    @proj.users << @users
    respond_to do |format|
      if @proj.save
        format.html { redirect_to @proj, notice: 'Proj was successfully created.' }
        format.json { render :show, status: :created, location: @proj }
      else
        format.html { render :new }
        format.json { render json: @proj.errors, status: :unprocessable_entity }
      end
    end

       rescue ActiveRecord::RecordNotUnique

    #    puts "INVALID"
        flash[:notice]='User already a member'

        redirect_to(:back)

  end

  # PATCH/PUT /projs/1
  # PATCH/PUT /projs/1.json
  def update


     @proj = Proj.find(params[:id])

      if @proj.owner==current_user.id
        if(params[:add_user]) !=nil
          @users = User.where(:id => params[:add_user])
          @proj.users << @users
        end
      end

      if @proj.owner==current_user.id 
        if(params[:remove_user])!=nil
          remove_member = @proj.users.find(params[:remove_user])
          @proj.users.delete(remove_member)
        end
      end


    respond_to do |format|
      if @proj.update(proj_params)
        format.html { redirect_to @proj, notice: 'Proj was successfully updated.' }
        format.json { render :show, status: :ok, location: @proj }
      else
        format.html { render :edit }
        format.json { render json: @proj.errors, status: :unprocessable_entity }
      end
    end

     rescue ActiveRecord::RecordNotUnique
        
        flash[:notice]='User already a member'
         redirect_to(:back)
         
    rescue ActiveRecord::RecordNotFound

      flash[:notice]='User not a member'
      redirect_to(:back)

  end

  # DELETE /projs/1
  # DELETE /projs/1.json
  def destroy
    @proj.destroy
    respond_to do |format|
      format.html { redirect_to projs_url, notice: 'Proj was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proj
      @proj = Proj.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proj_params
      params.require(:proj).permit(:title, :description, :owner, :settings, :members)
    end
end
