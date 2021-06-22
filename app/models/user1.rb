class User1 < ApplicationRecord
    validates :joined, :username, :membership, presence: true
    validates :username, uniqueness: true
    validates :membership, inclusion: {
        in: %w(Bronze Silver Gold Platinum)
    }
endcd 


# with inclusion they only have those three choices