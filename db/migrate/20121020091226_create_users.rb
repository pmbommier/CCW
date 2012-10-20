class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.integer :dept
      t.string :housing
      t.integer :surface
      t.datetime :date
      t.integer :people
      t.string :w_heating_power
      t.string :heating_power
      t.string :cooking_power
      t.text :power_comment
      t.string :level
      t.text :objectives_comment
      t.text :strengths
      t.text :weaknesses
      t.text :private_comment

      t.timestamps
    end
  end
end
