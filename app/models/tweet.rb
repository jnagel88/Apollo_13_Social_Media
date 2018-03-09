class Tweet < ApplicationRecord

    validates :message, presence: true, length: {maximum: 140, too_long: "must be 140 characters max!"}

    belongs_to :user 
    
end
