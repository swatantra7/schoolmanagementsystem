class Address < ActiveRecord::Base

  validates :villege,
            :state,
            :po,
            :dist,
            allow_blank: true,
            format: { with: /^[a-zA-Z]+$/, multiline: true }

  validates :aadhar_number,
            presence: true

  validates :email_id,
            presence: true,
            uniqueness: true

  validates :mobile,
            :pincode,
            numericality: true,
            allow_blank: true

  belongs_to :resource, polymorphic: true

end
