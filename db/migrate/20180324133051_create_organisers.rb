class CreateOrganisers < ActiveRecord::Migration[5.1]
  def change
    create_table :organisers do |t|
      t.string :name, null: false
      t.string :role, null: false, default: 'Organiser'
      t.string :title
      t.string :linkedin
      t.string :twitter
      t.string :github
      t.string :image
      t.timestamps null: false
    end
  end
end
