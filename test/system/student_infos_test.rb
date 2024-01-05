require "application_system_test_case"

class StudentInfosTest < ApplicationSystemTestCase
  setup do
    @student_info = student_infos(:one)
  end

  test "visiting the index" do
    visit student_infos_url
    assert_selector "h1", text: "Student infos"
  end

  test "should create student info" do
    visit student_infos_url
    click_on "New student info"

    fill_in "Age", with: @student_info.age
    fill_in "Email", with: @student_info.email
    fill_in "Name", with: @student_info.name
    fill_in "Rollno", with: @student_info.rollno
    click_on "Create Student info"

    assert_text "Student info was successfully created"
    click_on "Back"
  end

  test "should update Student info" do
    visit student_info_url(@student_info)
    click_on "Edit this student info", match: :first

    fill_in "Age", with: @student_info.age
    fill_in "Email", with: @student_info.email
    fill_in "Name", with: @student_info.name
    fill_in "Rollno", with: @student_info.rollno
    click_on "Update Student info"

    assert_text "Student info was successfully updated"
    click_on "Back"
  end

  test "should destroy Student info" do
    visit student_info_url(@student_info)
    click_on "Destroy this student info", match: :first

    assert_text "Student info was successfully destroyed"
  end
end
