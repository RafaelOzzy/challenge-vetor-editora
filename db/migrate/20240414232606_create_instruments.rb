class CreateInstruments < ActiveRecord::Migration[7.1]
  def change
    create_table :instruments do |t|
      t.string :question_1
      t.string :question_2
      t.string :question_3
      t.string :question_4
      t.string :question_5
      t.integer :instrument_questions

      t.timestamps
    end
  end
end
