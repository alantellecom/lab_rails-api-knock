class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true
    has_many :booklets
    has_many :books, :through => :booklets

    def to_token_payload
        {
            sub: id,
            email: email
        }
    end
end
