class Superhero < ActiveRecord::Base
  validates_presence_of :real_name, :hero_name
end
