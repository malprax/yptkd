# == Schema Information
#
# Table name: lectures
#
#  id                      :integer          not null, primary key
#  nama                    :string
#  nidn                    :string
#  education_id            :string
#  functional_allowance_id :string
#  structural_allowance_id :string
#  special_allowance_id    :string
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#

class Lecture < ActiveRecord::Base
  belongs_to :education
  belongs_to :functional_allowance
  belongs_to :special_allowance
  belongs_to :structural_allowance
  belongs_to :classification
  belongs_to :performance_allowance

  has_many :salaries, dependent: :destroy
end
