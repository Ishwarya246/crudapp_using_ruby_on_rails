json.extract! student_info, :id, :rollno, :name, :age, :email, :created_at, :updated_at
json.url student_info_url(student_info, format: :json)
