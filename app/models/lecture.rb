class Lecture < ActiveRecord::Base
  belongs_to :education
  belongs_to :functional_allowance
  belongs_to :special_allowance
  belongs_to :structural_allowance

  has_many :salaries, dependent: :destroy
end
