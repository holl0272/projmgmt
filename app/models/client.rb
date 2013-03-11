# == Schema Information
#
# Table name: clients
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  address       :text
#  latitude      :float            default(0.0)
#  longitude     :float            default(0.0)
#  primary_name  :string(255)
#  primary_email :string(255)
#  primary_phone :integer
#  second_name   :string(255)
#  second_email  :string(255)
#  second_phone  :integer
#  note          :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Client < ActiveRecord::Base
    attr_accessible :name, :address, :primary_name, :primary_email, :primary_phone, :second_name, :second_email, :second_phone, :note, :project_ids

    has_many :projects, :inverse_of => :client
    has_and_belongs_to_many :users

    validates :name, :presence => true, :uniqueness => true
    validates :address, :primary_name, :primary_email, :primary_phone, :presence => true

    before_save :geocode
    private
    def geocode
      result = Geocoder.search(self.address).first

      if result.present?
        self.latitude = result.latitude
        self.longitude = result.longitude
      end
    end
end
