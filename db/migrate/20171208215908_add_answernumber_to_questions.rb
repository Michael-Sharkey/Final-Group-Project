class AddAnswernumberToQuestions < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :answer_number, :integer
  end
end
