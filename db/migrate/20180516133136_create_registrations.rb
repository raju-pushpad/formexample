class CreateRegistrations < ActiveRecord::Migration[5.2]
  def change
    create_table :registrations do |t|
      t.string :name
      t.integer :contact
      t.string :education
      t.string :gender
      t.string :skills
      t.string :aboutyou
      t.text :description
      t.text :description1

      t.timestamps
    end
  end
end
