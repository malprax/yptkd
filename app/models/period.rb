# == Schema Information
#
# Table name: periods
#
#  id         :integer          not null, primary key
#  nama       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Period < ActiveRecord::Base
  has_many :salaries
end
