class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.text :name
      t.text :phone
      t.string :email
      t.text :message

      t.timestamps
    end
  end
end
