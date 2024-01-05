class CreateStudentInfos < ActiveRecord::Migration[7.1]
  def change
    create_table :student_infos do |t|
      t.integer :rollno
      t.string :name
      t.integer :age
      t.string :email

      t.timestamps
    end
  end
end
