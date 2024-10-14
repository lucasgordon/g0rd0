class CreateEmails < ActiveRecord::Migration[7.2]
  def change
    create_table :emails do |t|
      t.timestamps
      t.string :email, null: false
    end
  end
end
