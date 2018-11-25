class CreateUserRequirements < ActiveRecord::Migration[5.1]
  def change
    create_table :user_requirements do |t|
      t.references :user, index: true, foreign_key: true
      t.references :requirement, index: true, foreign_key: true

      t.timestamps
    end
  end
end
