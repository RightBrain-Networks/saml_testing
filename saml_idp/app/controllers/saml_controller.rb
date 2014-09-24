class SamlController < SamlIdp::IdpController
  
  def idp_authenticate(email, password)
    logger.info 'hit authenticate'

    logger.info 'retrieving user'
    u = User.find_by email: request[:email], password: request[:password]
    logger.info u
    true
  end

  def idp_make_saml_response(user)
    encode_SAMLResponse("you@example.com")
  end

end
