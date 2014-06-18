class Form1 < ActiveRecord::Base
  attr_accessible :user_id, :q1, :q2, :q3
  belongs_to :user
end
