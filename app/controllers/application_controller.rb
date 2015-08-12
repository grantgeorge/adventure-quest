class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  def default_serializer_options
    {
      root: false
    }
  end
end
