require 'date'
require 'securerandom'

class Person
  def initialize(firstname:, lastname:, birthday:)
    @firstname = firstname
    @lastname = lastname
    @birthday = birthday
    @token = SecureRandom.alphanumeric(10)
  end

  attr_reader :firstname, :lastname, :birthday

  def fullname
    "#{firstname} #{lastname}"
  end

  def age
    Date.today.strftime('%Y%m%d').to_i - birthday.strftime('%Y%m%d').to_i / 10000
  end
end
