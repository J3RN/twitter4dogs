class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :tweets
  has_many :follows, foreign_key: 'followed_id'
  has_many :followers, through: :follows

  has_many :follows, foreign_key: 'follower_id'
  has_many :followed, through: :follows, foreign_key: 'followed_id'

  has_many :favorites
end
