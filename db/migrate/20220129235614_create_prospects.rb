class CreateProspects < ActiveRecord::Migration[7.0]
  def change
    create_table :prospects do |t|
      t.string :name
      t.string :email
      t.string :group
      t.string :group_name
      t.string :cpf
      t.string :phone
      t.date :birth_date
      t.string :address

      t.timestamps
    end
  end
end
