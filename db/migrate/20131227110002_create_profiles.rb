class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name,:last_name
      t.text :description
      t.attachment :image
      t.timestamps
    end
  end
end
