class Usuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable, :omniauthable, omniauth_providers: [:google_oauth2]
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |usuario|
      usuario.email = auth.info.email
      usuario.name = auth.info.name
      usuario.password = Devise.friendly_token[0,20]
      usuario.image = auth.info.image
    end
  end
end
