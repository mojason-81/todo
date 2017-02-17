class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def render_not_found
    render file: "#{Rails.root}/public/404.html", status: :not_found
  end
end
