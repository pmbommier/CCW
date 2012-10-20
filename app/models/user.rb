class User < ActiveRecord::Base
  attr_accessible :cooking_power, :date, :dept, :email, :heating_power, :housing, :level, :name, :objectives_comment, :password, :people, :power_comment, :private_comment, :strengths, :surface, :w_heating_power, :weaknesses
  attr_reader :created_at, :updated_at
  
end
