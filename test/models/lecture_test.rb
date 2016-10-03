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

require 'test_helper'

class LectureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
