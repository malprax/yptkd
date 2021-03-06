# == Schema Information
#
# Table name: periods
#
#  id         :integer          not null, primary key
#  bulan      :string
#  tahun      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Period < ActiveRecord::Base
  has_many :salaries
  validates_presence_of :bulan, :tahun

  scope :sortir, ->{order('id asc')}
end
