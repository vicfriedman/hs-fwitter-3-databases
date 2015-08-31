# Our Tweet class now inherits from ActiveRecord::Base. ActiveRecord now gives us access to tons of methods, including username and status methods for instances of Tweets, and an  'all' method for the class of Tweet. 
# Because we're inheriting all of this from ActiveRecord, we can comment out all of the code that we wrote on days 1 and 2.
class Tweet < ActiveRecord::Base
  # attr_reader :username, :status
  
  # ALL = []

  # def initialize(username, status)
  #   @username = username
  #   @status = status
  #   ALL << self
  # end

  # def username
  #   @username
  # end

  # def status
  #   @status
  # end

  # def self.all
  #   ALL
  # end
end