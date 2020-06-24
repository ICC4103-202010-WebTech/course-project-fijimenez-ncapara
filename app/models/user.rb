class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #has_many :users, class_name: "User", foreign_key: :"administrator_id"#
  #belongs_to :administrator, class_name: "User", optional: true#
  has_many :subscriptions
  has_many :organizations, :through => :subscriptions
  has_many :events
  has_many :event_invitations
  has_many :reports
  has_many :comments
  has_one :mail_box
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } ,uniqueness: {message: "Email already exists!!!"}
  validates :name, uniqueness: {message: "Name already exists!!"}

  has_one_attached :photo
end
