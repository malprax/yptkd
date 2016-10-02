class Salary < ActiveRecord::Base
  belongs_to :period
  belongs_to :lecture
end
