class Item < ApplicationRecord
  belongs_to :todo
  validates_presence_of :name, :done, :priority
end
