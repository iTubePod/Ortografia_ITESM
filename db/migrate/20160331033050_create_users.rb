class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string "matricula", :limit =>9, :null => false
      t.string "Nombre", :limit =>30, :null => false
      t.string "Apellidos", :limit => 30, :null => false
      t.column "Contraseña", :string, :limit => 30, :null => false
      t.boolean "isProfessor", :default => false, :null => false

      t.timestamps null: false
    end
  end
end
