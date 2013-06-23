class CreateAdverts < ActiveRecord::Migration
  def change
    create_table :adverts do |t|
      t.string :name
      t.string :description
      t.string :slug

      t.timestamps
    end
  end
end
