class Student < ActiveRecord::Base

  devise :database_authenticatable, 
         :registerable,
         :recoverable, 
         :rememberable, 
         :validatable

  include ValidationShared

  has_many :results
  has_many :admidcards

  accepts_nested_attributes_for :results
  accepts_nested_attributes_for :admidcards

  class << self

    def import_students(document)
      spreadsheet = open_spreadsheet(document)
      spreadsheet.parse(clean: true)
      header = spreadsheet.row(1)
      begin
        (2..spreadsheet.last_row).each do |i|
          student_attributes = Hash[[header[0..2], spreadsheet.row(i)[0..2]].transpose]
          address_attributes =  Hash[[header[3..12], spreadsheet.row(i)[3..12]].transpose]
          address = Address.find_by(email_id: address_attributes['email_id'])
          student = address.try(:resource)
          if student.present?
            student.update_attributes(student_attributes)
            address.update_attributes(address_attributes)
          else
            student = Student.create(student_attributes)
            address = student.build_address(address_attributes)
            address.save
          end
        end
      rescue
        false
      end
    end
    
    def open_spreadsheet(file)
      case File.extname(file.original_filename)
      when '.csv' then Roo::CSV.new(file.path)
      when '.xls' then Roo::Excel.new(file.path)
      when '.xlsx' then Roo::Excelx.new(file.path)
      end
    end 

  end 

  def full_name
    fname+' '+mname
  end

end
