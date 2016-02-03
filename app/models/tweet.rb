class Tweet < ActiveRecord::Base
  belongs_to :user
  has_many :favorites
  has_many :favoriters, through: :favorites, source: 'User'
end
