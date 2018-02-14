class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.string :first_name
      t.string :last_name
      t.integer :phone
      t.string :email
      t.date :date
      t.time :pickuptime
      t.time :dropofftime
      t.string :pickupaddress
      t.string :dropoffaddress
      t.string :extra

      t.timestamps
    end
  end
end
