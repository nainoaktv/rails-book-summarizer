class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author_first_name
      t.string :author_last_name

      t.timestamps
    end
  end
end
