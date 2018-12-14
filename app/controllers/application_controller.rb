class ApplicationController < ActionController::API

  #secret key
  def s_key
    'h3llo'
  end

  #given a payload return a token
  def encode(payload)
    token = JWT.encode(payload, s_key, 'HS256')
  end

  #given a token return the original payload
  def decode(token)
    JWT.decode(token, s_key, true, {algorithm:'HS256'})[0]
  end
  
end
