class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  layout 'admin_lte_2'

  # protect_from_forgery prepend: true
end
