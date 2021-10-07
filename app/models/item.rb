class Item < ApplicationRecord
  belongs_to :todo
  validates_presence_of :name, :priority
  validates_length_of :name, minimum: 3, maximum: 25, message: 'it should be at least 3 character and maximum 25'
end
