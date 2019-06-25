class ApplicationController < ActionController::API

  def secret_key
    "password"
  end

  def payload
    {
      sub: @user.id,
      iat: Time.now.to_i,
      exp: Time.now.to_i + 7200000
    }
  end

  def gen_token
    JWT.encode payload(), secret_key(), "HS256"
  end

  def get_token
    request.headers['Authorization']
  end

  def decode_token
    begin
      JWT.decode get_token(), secret_key(), true
    rescue JWT::DecodeError => e
      nil
    end
  end

end
