class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :body,  presence: true

  belongs_to :user

  def user
    super || GuestUser.new
  end
end