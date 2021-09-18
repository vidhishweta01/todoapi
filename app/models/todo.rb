class Todo < ApplicationRecord
  has_many :items
  validates_presence_of :title, :created_by
end
