# frozen_string_literal: true

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User
  # has_one_attached :image
  # before_create :transform_image

  # after_save :transform_image
  #
  # def  transform_image
  #   if self.image?
  #     self.image.variant(resize: "100x100")
  # end
  #
  #
  #
  # def transform_image
  #   self.image.variant(resize: "100x100").processed.service_url
  # end
end
