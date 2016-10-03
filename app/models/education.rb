# == Schema Information
#
# Table name: educations
#
#  id         :integer          not null, primary key
#  nama       :string
#  satuan     :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Education < ActiveRecord::Base
  has_many :lectures
end
