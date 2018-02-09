class CreateEnquiries < ActiveRecord::Migration[5.1]
  def change
    create_table :enquiries do |t|
      t.string :name
      t.string :mail_id
      t.integer :contact_no
      t.string :description

      t.timestamps
    end
  end
end
