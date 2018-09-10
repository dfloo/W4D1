class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, required: true 
      t.string :email, required: true 
      t.timestamps
    end
  end
end
