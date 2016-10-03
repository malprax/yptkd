class Tax < ActiveRecord::Base
  has_many :salaries, dependent: :destroy

end
