class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :title
      t.string :assigned_color
      t.boolean :primary, default: false
      t.text :default_position

      t.timestamps
    end
  end
end
