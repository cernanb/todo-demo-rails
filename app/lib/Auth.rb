class Auth

  def self.encode(user_id)
    payload = {user_id: user_id}
    JWT.encode payload, 'my_secret', 'HS256'
  end

  def self.decode(token)
    JWT.decode token, 'my_secret', true, { algorithm: 'HS256' }
  end

end