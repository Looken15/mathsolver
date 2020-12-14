class Problem < ApplicationRecord
  validates :matrix, presence: true
  validates :b, presence: true
  validates :m, presence: true
  validates :n, presence: true
  has_one :solution
end
