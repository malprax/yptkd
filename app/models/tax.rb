# == Schema Information
#
# Table name: taxes
#
#  id         :integer          not null, primary key
#  nama       :string
#  satuan     :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tax < ActiveRecord::Base
  has_many :salaries, dependent: :destroy

  validates_presence_of :nama, :satuan

end
