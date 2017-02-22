class CreateWebApps < ActiveRecord::Migration[5.0]
  def change
    create_table :web_apps do |t|
      t.string :project_name
      t.string :image
      t.string :client
      t.date :date
      t.string :link
      t.text :description

      t.timestamps
    end
  end
end
