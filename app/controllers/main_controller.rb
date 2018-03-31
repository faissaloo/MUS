class MainController < ApplicationController
  def index
  end
  
  def redirect
    redirect_to(Url.getUrl(params[:code]))
  end
end
