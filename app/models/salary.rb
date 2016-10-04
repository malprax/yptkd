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

class Salary < ActiveRecord::Base
  belongs_to :period
  belongs_to :lecture
  belongs_to :tax1, class_name: 'Tax'
  belongs_to :tax2, class_name: 'Tax'
  belongs_to :tax3, class_name: 'Tax'

  before_save :buat_nomor_slip_gaji, :total_gaji #, :pajak

  def buat_nomor_slip_gaji
    #code
    self.form_number = "YPTKD/#{period.bulan}/#{period.tahun}/#{lecture.nama}"
  end

  def gaji
    #code
    a = self.lecture.education ? "#{self.lecture.education.satuan}" : nil
    b = self.lecture.classification ? "#{self.lecture.classification.satuan}" : nil
    c = self.lecture.functional_allowance ? "#{self.lecture.functional_allowance.satuan}" : nil
    d = self.lecture.structural_allowance ? "#{self.lecture.structural_allowance.satuan}" : nil
    e = self.lecture.performance_allowance ? "#{self.lecture.performance_allowance.satuan}" : nil
    f = self.lecture.special_allowance ? "#{self.lecture.special_allowance.satuan}" : nil

    @gaji = a.to_i + b.to_i + c.to_i + d.to_i + e.to_i + f.to_i
  end

  def minus
    #code
    a = self.tax1 ? "#{self.tax1.satuan}" : nil
    b = self.tax2 ? "#{self.tax2.satuan}" : nil
    c = self.tax3 ? "#{self.tax3.satuan}" : nil
    @minus = a.to_i + b.to_i + c.to_i
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
