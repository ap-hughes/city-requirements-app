class CreateRequirementCities < ActiveRecord::Migration[5.1]
  def change
    create_table :requirement_cities do |t|
      t.references :city, index: true, foreign_key: true
      t.references :requirement, index: true, foreign_key: true

      t.timestamps
    end
  end
end
