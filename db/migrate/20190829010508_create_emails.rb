class CreateEmails < ActiveRecord::Migration[5.2]
  def change
    create_table :emails do |t|
      t.string :title
      t.string :author
      t.text :content

      t.timestamps
    end
  end
end
