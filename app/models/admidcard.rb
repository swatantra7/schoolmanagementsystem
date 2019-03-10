class Admidcard < ApplicationRecord

  has_attached_file :admidcard,
                    path: ":rails_root/public/system/:attachment/:id/:style/:filename",
                    url: "/system/:attachment/:id/:style/:filename"

  validates_attachment  :admidcard,
                        :content_type => { :content_type => %w(application/pdf) },
                        :size => { :in => 0..10.megabytes }

end
