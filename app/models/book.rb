class Book < ApplicationRecord
    has_many :booklets
    has_many :users, :through => :booklets
end
