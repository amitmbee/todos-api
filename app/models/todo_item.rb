class TodoItem < ApplicationRecord
  before_create :set_completed
  validates_presence_of :name

  def set_completed
    self.completed ||= false
  end
end
