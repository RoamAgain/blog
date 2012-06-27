class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email

      #t.timestamps adds created_at and updated_at
      t.timestamps
    end
  end
#up method and down methods are created for irreversible migration
end
