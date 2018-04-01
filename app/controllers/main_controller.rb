class MainController < ApplicationController
  def index
  end
  
  def redirect
    redirectUrl=Url.getUrl(params[:code])
    if redirectUrl
      redirect_to(redirectUrl)
    else
      @error_msg = "Not found: No such redirect exists"
      render status: :not_found
    end
  end
end
