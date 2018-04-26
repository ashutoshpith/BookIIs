class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.integer :bookid
      t.string :bookname
      t.date :bookdate
      t.string :department
      t.integer :bookprice

      t.timestamps
    end
  end
end
