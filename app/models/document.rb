class Document < ApplicationRecord
  has_attached_file :document

  validates_attachment_content_type :document,
    content_type: [
      'image/jpg',
      'image/jpeg',
      'image/png',
      'image/gif',
      'application/pdf',
      'application/vnd.ms-excel',
      'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
      'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
      'txt/csv'
    ]

end
