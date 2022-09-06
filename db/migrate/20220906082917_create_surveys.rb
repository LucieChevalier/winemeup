class CreateSurveys < ActiveRecord::Migration[7.0]
  def change
    create_table :surveys do |t|
      t.string :question_1
      t.string :question_2
      t.string :question_3

      t.timestamps
    end
  end
end
