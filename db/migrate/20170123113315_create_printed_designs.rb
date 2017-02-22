class CreatePrintedDesigns < ActiveRecord::Migration[5.0]
  def change
    create_table :printed_designs do |t|
      t.string :client
      t.string :lead_image
      t.string :secondary_image
      t.date :date
      t.text :description

      t.timestamps
    end
  end
end
