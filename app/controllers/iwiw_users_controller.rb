class IwiwUsersController < ApplicationController
  # GET /iwiw_users
  # GET /iwiw_users.xml
  def index
    @iwiw_users = IwiwUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @iwiw_users }
    end
  end

  # GET /iwiw_users/1
  # GET /iwiw_users/1.xml
  def show
    @iwiw_user = IwiwUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @iwiw_user }
    end
  end

  # GET /iwiw_users/new
  # GET /iwiw_users/new.xml
  def new
    @iwiw_user = IwiwUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @iwiw_user }
    end
  end

  # GET /iwiw_users/1/edit
  def edit
    @iwiw_user = IwiwUser.find(params[:id])
  end

  # POST /iwiw_users
  # POST /iwiw_users.xml
  def create
    @iwiw_user = IwiwUser.new(params[:iwiw_user])

    respond_to do |format|
      if @iwiw_user.save
        flash[:notice] = 'IwiwUser was successfully created.'
        format.html { redirect_to(@iwiw_user) }
        format.xml  { render :xml => @iwiw_user, :status => :created, :location => @iwiw_user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @iwiw_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /iwiw_users/1
  # PUT /iwiw_users/1.xml
  def update
    @iwiw_user = IwiwUser.find(params[:id])

    respond_to do |format|
      if @iwiw_user.update_attributes(params[:iwiw_user])
        flash[:notice] = 'IwiwUser was successfully updated.'
        format.html { redirect_to(@iwiw_user) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @iwiw_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /iwiw_users/1
  # DELETE /iwiw_users/1.xml
  def destroy
    @iwiw_user = IwiwUser.find(params[:id])
    @iwiw_user.destroy

    respond_to do |format|
      format.html { redirect_to(iwiw_users_url) }
      format.xml  { head :ok }
    end
  end
end
