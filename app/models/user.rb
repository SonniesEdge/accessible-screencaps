class User < ActiveRecord::Base
  validates :twitterid, presence: true, length: { maximum: 15 }
  validates :oauth_token, presence: true, uniqueness: true
  validates :oauth_secret, presence: true
end
