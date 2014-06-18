class Form2 < ActiveRecord::Base
  attr_accessible :user_id, :q1, :q2, :q3, :q4
  belongs_to :user
end
