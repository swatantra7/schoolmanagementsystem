class Result < ApplicationRecord

  has_attached_file :result,
                    path: ":rails_root/public/system/:attachment/:id/:style/:filename",
                    url: "/system/:attachment/:id/:style/:filename"

  validates_attachment  :result,
                        :content_type => { :content_type => %w(application/pdf) },
                        :size => { :in => 0..10.megabytes }

end
