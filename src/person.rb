require 'date'

class Person
  def initialize(firstname:, lastname:, birthday:)
    @firstname = firstname
    @lastname = lastname
    @birthday = birthday
  end

  attr_reader :firstname, :lastname, :birthday

  def fullname
    "#{firstname} #{lastname}"
  end

  def age
    Date.today.strftime('%Y%m%d').to_i - birthday.strftime('%Y%m%d').to_i / 10000
  end
end
