class CreateClientes < ActiveRecord::Migration[5.2]
  def change
    create_table :clientes do |t|
      t.integer :ruc
      t.string :nombre
      t.text :direccion
      t.string :ciudad
      t.integer :telefono
      t.integer :fijo
      t.text :email

      t.timestamps
    end
  end
end
