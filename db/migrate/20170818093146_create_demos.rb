class CreateDemos < ActiveRecord::Migration[5.0]
  def change
    create_table :demos do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
