class User < ActiveRecord::Base
  has_many :jobs  
  has_many :networkings

  has_secure_password

end
