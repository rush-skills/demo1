class Project < ActiveRecord::Base
  attr_accessible :apply_date, :brief_description, :country, :end_date, :job_description, :language, :name, :other_details, :skills, :start_date, :work_information
end
