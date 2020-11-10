class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # http_basic_authenticate_with name: "dhh", password: "secret"
  
  before_filter :http_basic_auth
  before_filter :current_user

  def http_basic_auth

    result = authenticate_or_request_with_http_basic do |name, password|
        user = User.find_by_user_name(name)

        if !user.present?
          false
        elsif !user.authenticate(password)
          false
        else
          @current_user = user
          session[:user_id] = user.id
          
          true
        end
      end

    result
  end

  def current_user
    return unless session[:user_id]

    @current_user ||= User.find(session[:user_id])

    @current_user
  end

  def request_login
    if !@current_user.present? 
      return redirect_to infos_path
    end
  end

end
