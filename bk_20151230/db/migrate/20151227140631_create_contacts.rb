class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :mail_address
      t.string :inquiry

      t.timestamps null: false
    end
  end
end
