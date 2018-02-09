class AddUserIdToEnquiry < ActiveRecord::Migration[5.1]
  def change
    add_column :enquiries, :user_id, :integer
  end
end
