class Kitten < ApplicationRecord
  validates :name, presence: true, length: { minimum: 2 }
  validates :age, numericality: { only_integer: true }, if: :positive_age?
  validates :cuteness, numericality: { only_integer: true }
  validates :softness, numericality: { only_integer: true }

  def positive_age?
    self.age >= 0
  end
end
