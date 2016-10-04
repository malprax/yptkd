# == Schema Information
#
# Table name: salaries
#
#  id          :integer          not null, primary key
#  form_number :string
#  period_id   :integer
#  lecture_id  :integer
#  tax1_id     :integer
#  tax2_id     :integer
#  tax3_id     :integer
#  total       :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class SalaryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
