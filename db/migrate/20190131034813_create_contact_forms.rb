class CreateContactForms < ActiveRecord::Migration[5.2]
  def change
    create_table :contact_forms do |t|
      t.string :name
      t.string :email
      t.string :message

      t.timestamps
    end
  end
end
