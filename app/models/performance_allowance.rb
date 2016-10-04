# == Schema Information
#
# Table name: performance_allowances
#
#  id              :integer          not null, primary key
#  range_mahasiswa :string
#  satuan          :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class PerformanceAllowance < ActiveRecord::Base
  has_many :lectures
end
