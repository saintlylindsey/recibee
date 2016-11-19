class FixColumnName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :cookingsteps, :recipeid, :recipe_id
  end
end
