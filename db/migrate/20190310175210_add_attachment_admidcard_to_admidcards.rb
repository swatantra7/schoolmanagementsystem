class AddAttachmentAdmidcardToAdmidcards < ActiveRecord::Migration
  def self.up
    change_table :admidcards do |t|
      t.attachment :admidcard
    end
  end

  def self.down
    remove_attachment :admidcards, :admidcard
  end
end
