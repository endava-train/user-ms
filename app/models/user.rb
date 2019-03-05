# frozen_string_literal: true

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User
  mount_uploader :avatar, AvatarUploader
  serialize :avatar, JSON # If you use SQLite, add this line.

  # has_one_attached :image
  #
  # def  transform_image
  #   if self.image?
  #     self.image.variant(resize: "100x100")
  # end
  #
  # def transform_image
  #   self.image.variant(resize: "100x100").processed.service_url
  # User.find(32).avatar.variant(resize_to_fit: [100, 100])
  # end
end
