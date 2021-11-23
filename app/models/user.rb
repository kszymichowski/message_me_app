class User < ApplicationRecord
    validates :username, presence: true, uniqueness: { case_sensitive: false }, length: {maximum: 20}
    has_secure_password
end
