class CreateDevPros < ActiveRecord::Migration[5.1]
  def change
    create_table :dev_pros do |t|
      t.references :developer, foreign_key: true
      t.references :programming_language, foreign_key: true

      t.timestamps
    end
  end
end
