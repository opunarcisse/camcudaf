class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.text :body
      t.string :title
      t.string :user

      t.timestamps
    end
  end
end
