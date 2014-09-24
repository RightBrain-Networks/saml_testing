class SamlController < SamlIdp::IdpController
  
  def idp_authenticate(email, password)
    u = User.find_by email: request[:email], password: request[:password]
    u
  end

  def idp_make_saml_response(user)
    encode_SAMLResponse(user.email)
  end

end
