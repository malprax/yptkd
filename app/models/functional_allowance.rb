# == Schema Information
#
# Table name: functional_allowances
#
#  id         :integer          not null, primary key
#  nama       :string
#  satuan     :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class FunctionalAllowance < ActiveRecord::Base
  has_many :lectures
end
