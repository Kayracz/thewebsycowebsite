class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :name
      t.text :message
      t.string :email
      t.string :subject

      t.timestamps
    end
  end
end
