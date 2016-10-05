# == Schema Information
#
# Table name: classifications
#
#  id         :integer          not null, primary key
#  nama       :string
#  satuan     :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Classification < ActiveRecord::Base
  has_many :lectures
  validates_presence_of :nama, :satuan
end
