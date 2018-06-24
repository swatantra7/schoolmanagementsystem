class Student < ActiveRecord::Base

  validates :fname, 
            :mname, 
            presence: true,
            length: { minimum: 2, maximum: 50 },
            format: { with: /^[a-zA-Z]+$/, multiline: true}

  validates :age,
            numericality: true,
            allow_blank: true

  has_one :address, as: :resource

  delegate :villege,
            :state,
            :po,
            :dist,
            :pincode,
            :mobile,
            :email_id,
            :dob,
            :session,
            :aadhar_number, to: :address, allow_nil: true

  accepts_nested_attributes_for :address
  
end
