class Solution < ApplicationRecord
  validates :answer, presence: true, uniqueness: true
  belongs_to :problem
end