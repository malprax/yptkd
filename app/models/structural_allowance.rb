# == Schema Information
#
# Table name: structural_allowances
#
#  id         :integer          not null, primary key
#  nama       :string
#  satuan     :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class StructuralAllowance < ActiveRecord::Base
  has_many :lectures

  validates_presence_of :nama, :satuan
end
