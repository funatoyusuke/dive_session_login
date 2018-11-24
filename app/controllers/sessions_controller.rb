class SessionsController < ApplicationController
  def new
  end
  
  def create
    uesr=Uesr.find_by(email: params[:session][:email].downcase)
    if uesr && uesr.authenticate(params[:session][:password])
      session[:uesr_id] = uesr.id
      redirect_to uesr_path(uesr.id)
    else
      flash.now[:danger] = 'ログインに失敗しました'
      render 'new'
    end
  end
  
  def destroy
    session.delete(:uesr_id)
    flash[:notice]= 'ログアウトしました'
    redirect_to new_session_path
  end
  
end
