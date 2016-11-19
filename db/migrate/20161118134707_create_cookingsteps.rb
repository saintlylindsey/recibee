class CreateCookingsteps < ActiveRecord::Migration[5.0]
  def change
    create_table :cookingsteps do |t|
      t.integer :number
      t.text :step
      t.integer :recipeid

      t.timestamps
    end
  end
end
