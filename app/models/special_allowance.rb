# == Schema Information
#
# Table name: special_allowances
#
#  id         :integer          not null, primary key
#  nama       :string
#  satuan     :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class SpecialAllowance < ActiveRecord::Base
  has_many :lectures
end
