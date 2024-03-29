class CreateTables < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
    end

    create_table :questions do |t|
      t.string :question
      t.integer :user_id

      t.timestamps
    end

    create_table :answers do |t|
      t.string :answer
      t.integer :user_id
      t.integer :question_id

      t.timestamps
    end

    create_table :votes do |t|
      t.integer :user_id
      t.integer :answer_id
    end
  end
end
