class CreateQuizzes < ActiveRecord::Migration[6.0]
  def change
    create_table :quizzes do |t|
			t.string :quizmaker_name
			t.string :quizmaker_email
      t.string :title
      t.string :subject
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
