class ApiController < ApplicationController
 #before_action :set_default_format
 #protect_from_forgery with: :null_session
 protect_from_forgery unless: -> { request.format.json? }

 private
 def set_default_format
    request.format = :json
 end
end