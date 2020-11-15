class SessionsController < ApplicationController
  skip_before_filter :login_most

  def new
    # respond_to do |format|
    #   format.js
    # end

    # respond_to do |format|
    #   format.js { :location => path_to_controller_method_url(argument) }
    # end
  end
end
