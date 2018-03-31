class UrlsController < ApplicationController
  def new
    @generated_url=Url.shortenUrl(params[:url])
  end
end
