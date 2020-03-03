class Company < ApplicationRecord
  attr_reader :name
  def initialize
    @name = "Zalando"
  end
end
