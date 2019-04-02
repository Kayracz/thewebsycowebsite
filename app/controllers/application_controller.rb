class ApplicationController < ActionController::Base
before_action :set_locale

def default_url_options
  { host: ENV["HOST"] || "https://www.thewebsyco.com/" }
end

private

def set_locale
  I18n.locale = params[:locale] || I18n.default_locale
  end
end
