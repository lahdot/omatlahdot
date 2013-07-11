class CreateReittiopas < ActiveRecord::Migration
  def change
    create_table :reittiopas do |t|
      t.string :query
      t.text :result

      t.timestamps
    end
  end
end
