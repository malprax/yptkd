# == Schema Information
#
# Table name: salaries
#
#  id                :integer          not null, primary key
#  form_number       :string
#  period_id         :string
#  lecture_id        :string
#  tax               :float
#  regular_gathering :float
#  total             :float
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'test_helper'

class SalaryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
