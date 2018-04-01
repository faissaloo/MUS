class UrlsController < ApplicationController
  def new
    if request.post?
      begin
        shorturl = Url.shortenUrl(params.require(:url))
        if shorturl
          @generated_url = request.host+shorturl
        else
          @error_msg = "Bad request: Invalid URI given"
          render status: :bad_request
        end
      rescue ActionController::ParameterMissing
        @error_msg = "Bad request: A url parameter must be provided via a POST request"
        render status: :bad_request
      end
    else
      @error_msg = "Method not allowed: This page may only be accessed via a POST request"
      render status: :method_not_allowed
    end
  end
end
