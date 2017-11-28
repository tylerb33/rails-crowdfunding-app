class User < ApplicationRecord
	has_many :payment_types
	has_many :gifts
	has_many :projects

	has_secure_password
 
    validates_uniqueness_of :email
end
