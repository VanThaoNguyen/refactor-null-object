class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name,    presence: true
  validates :last_name,     presence: true

  def name
    return if first_name.blank? or last_name.blank?
    self.name = first_name + ' ' + last_name
  end
end
