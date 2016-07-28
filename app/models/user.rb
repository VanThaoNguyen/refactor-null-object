class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name,    presence: true
  validates :last_name,     presence: true

  has_many :posts

  def name
    if last_name.blank?
      first_name
    else
      first_name + " " + last_name
    end
  end
end
