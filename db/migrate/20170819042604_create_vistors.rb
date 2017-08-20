class CreateVistors < ActiveRecord::Migration[5.1]
  def change
    create_table :vistors do |t|
      t.string :fullname
      t.string :email

      t.timestamps
    end
  end
end
