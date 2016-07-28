class CreateGuestUsers < ActiveRecord::Migration
  def change
    create_table :guest_users do |t|
    end
  end
end
