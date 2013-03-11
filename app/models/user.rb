# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  first_name      :string(255)
#  last_name       :string(255)
#  email           :string(255)
#  phone           :integer
#  address         :text
#  ssn             :integer
#  image           :text
#  note            :text
#  is_admin        :boolean          default(FALSE)
#  is_pm           :boolean          default(FALSE)
#  is_design       :boolean          default(FALSE)
#  is_dev          :boolean          default(FALSE)
#  is_photo        :boolean          default(FALSE)
#  is_write        :boolean          default(FALSE)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
    attr_accessible :first_name, :last_name, :email, :phone, :address, :ssn, :image, :note, :is_admin, :is_pm, :is_design, :is_dev, :is_photo, :is_write, :password, :password_confirmation

    has_secure_password
    has_and_belongs_to_many :clients

    # validates :first_name, :last_name, :email, :address, :presence => true
    # validates :phone, :presence => true, :numericality => { :only_integer => true }
    # validates :ssn, :presence => true, :uniqueness => true, :numericality => { :only_integer => true }
    validates :password, :confirmation => true, :length => { :in => 6..12 }
    validates :password_confirmation, :presence => true
end
