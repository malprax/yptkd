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

class Salary < ActiveRecord::Base
  belongs_to :period
  belongs_to :lecture
  belongs_to :tax1_id, class_name: 'Tax'
  belongs_to :tax2_id, class_name: 'Tax'
  belongs_to :tax3_id, class_name: 'Tax'

  after_save :buat_nomor_slip_gaji, :total_gaji #, :pajak

  def buat_nomor_slip_gaji
    #code
    self.form_number = "YPTKD/#{period.nama}/#{self.id}"
  end

  def gaji
    #code
    @gaji  = " #{self.lecture.education.satuan rescue nil + self.lecture.functional_allowance.satuan rescue nil + self.lecture.structural_allowance.satuan rescue nil + self.lecture.special_allowance.satuan rescue nil }"
  end

  def minus
    #code
    @minus = "#{self.regular_gathering + self.potongan_pajak.to_f + self.potongan_lain_lain.to_f}"
  end

  def total_gaji
    #code
    self.total = gaji.to_i - minus.to_i
  end
  # def pajak
  #   #code
  #   self.tax = "#{self.total_gaji}*10%"
  # end
  #
  # def total_gaji
  #   #code
  #   self.total = gaji - pajak
  # end

end
