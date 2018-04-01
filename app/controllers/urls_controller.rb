class UrlsController < ApplicationController
  def new
    begin
      @generated_url = Url.shortenUrl(params.require(:url))
    rescue ActionController::ParameterMissing
      @error_msg = "Bad request: A url parameter must be provided via a POST request"
      render status: :bad_request
    end
  end
end
