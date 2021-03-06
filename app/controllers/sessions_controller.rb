class SessionsController < ApplicationController
 # before_action :set_session, only: [:show, :edit, :update, :destroy]

  def new
   @session = Session.new
  end

  def create
    email = params[:session][:username]
    password = params[:session][:password]
    user = User.authenticate(email, password)
    if user
    session[:user_id] = user.id
    flash[:notice] =" Welcome, You are logged in."
    redirect_to profile_url(:id => user.id)

      else
      flash[:error] =" Please, enter correct credentials. Try again !!"
     # render :action => "new"
      redirect_to "https://www.google.com"
    end
  end



  # DELETE /sessions/1
  # DELETE /sessions/1.json
  def destroy
    session[:user_id] = nil
    respond_to do |format|
      format.html {  flash[:notice] = 'Post was successfully updated.' }
      format.json { head :no_content }
	redirect_to :login
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
   # def set_session
     # @session = Session.find(:id => session[":user_id"])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def session_params
      params.require(:session).permit(:username, :password)
    end
end
