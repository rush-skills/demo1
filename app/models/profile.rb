class Profile < ActiveRecord::Base
  attr_accessible :user_id, :accommodation_fee, :accommodation_name, :client_name, :country, :expectations, :fb_link, :flight_details, :profile_pic, :tn_id, :tn_manager
  belongs_to :user
end
