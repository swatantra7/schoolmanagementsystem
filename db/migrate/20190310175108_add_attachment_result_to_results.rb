class AddAttachmentResultToResults < ActiveRecord::Migration
  def self.up
    change_table :results do |t|
      t.attachment :result
    end
  end

  def self.down
    remove_attachment :results, :result
  end
end
