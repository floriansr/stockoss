class CreateCollectes < ActiveRecord::Migration[6.0]
  def change
    create_table :collectes do |t|
      t.string :name

      t.timestamps
    end
  end
end
