class CreateQuestionNews < ActiveRecord::Migration
  def change
    create_table :question_news do |t|
      t.string :title
      t.text :body
      t.boolean :resolved

      t.timestamps null: false
    end
  end
end
