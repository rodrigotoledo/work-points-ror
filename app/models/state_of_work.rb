class StateOfWork < ApplicationRecord
  enum state: %i[started launching ending_work]
  belongs_to :user

  validates :state, :state_at, presence: true
end
