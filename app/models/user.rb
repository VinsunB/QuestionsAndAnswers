class User < ActiveRecord::Base
  has_secure_password

 validates :password, length: { minimum: 5 }
validates :password, presence: true

validates :name, presence: true
validates :email, presence: true
end
