class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.string :description
      t.string :author
      t.date :pubdate

      t.timestamps
    end
  end
end
