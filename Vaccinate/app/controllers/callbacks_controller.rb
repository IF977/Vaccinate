class CallbacksController < Devise::OmniauthCallbacksController
	def facebook
		@usuario = Usuario.from_omniauth(request.env["omniauth.auth"])
		if @usuario.persisted?
			sign_in_and_redirect @usuario, :event => :authentication
    	else
      	redirect_to new_usuario_registration_url
    	end
	end

	def failure
		redirect_to root_path
  	end

  def google_oauth2
      @usuario = Usuario.from_omniauth(request.env['omniauth.auth'])

      if @usuario.persisted?
        flash[:notice] = I18n.t 'devise.omniauth_callbacks.success', kind: 'Google'
        sign_in_and_redirect @usuario, event: :authentication
      else
        session['devise.google_data'] = request.env['omniauth.auth'].except(:extra) # Removing extra as it can overflow some session stores
        redirect_to new_user_registration_url, alert: @usuario.errors.full_messages.join("\n")
      end
  end
end
