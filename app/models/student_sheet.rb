class StudentSheet < ApplicationRecord

  validates_presence_of :document
  validate :file_format, if: 'document.present?'

  has_one :document, as: :resource

  after_save :import_students

  accepts_nested_attributes_for :document

  private

  def file_format
    student_sheet_format = File.extname(document.document.original_filename)
    unless ['.csv', '.xls', '.xlsx'].include?(student_sheet_format)
      errors.add(:base, :invalid_file_format)
    end 
  end

  def import_students
    Student.import_students(document.document)
  end 

end
