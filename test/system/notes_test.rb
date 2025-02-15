require "application_system_test_case"

class NotesTest < ApplicationSystemTestCase
  setup do
    @note = notes(:one)
  end

  test "visiting the index" do
    visit notes_url
    assert_selector "h1", text: "Notes"
  end

  test "should create note" do
    visit notes_url
    click_on "New note"

    fill_in "Afib", with: @note.afib
    fill_in "Comment", with: @note.comment
    fill_in "Diastolic", with: @note.diastolic
    fill_in "Euthyrox dose", with: @note.euthyrox_dose
    fill_in "Heart rate", with: @note.heart_rate
    fill_in "Measured at", with: @note.measured_at
    fill_in "State", with: @note.state
    fill_in "Statin dose", with: @note.statin_dose
    fill_in "Systolic", with: @note.systolic
    fill_in "Weight", with: @note.weight
    click_on "Create Note"

    assert_text "Note was successfully created"
    click_on "Back"
  end

  test "should update Note" do
    visit note_url(@note)
    click_on "Edit this note", match: :first

    fill_in "Afib", with: @note.afib
    fill_in "Comment", with: @note.comment
    fill_in "Diastolic", with: @note.diastolic
    fill_in "Euthyrox dose", with: @note.euthyrox_dose
    fill_in "Heart rate", with: @note.heart_rate
    fill_in "Measured at", with: @note.measured_at.to_s
    fill_in "State", with: @note.state
    fill_in "Statin dose", with: @note.statin_dose
    fill_in "Systolic", with: @note.systolic
    fill_in "Weight", with: @note.weight
    click_on "Update Note"

    assert_text "Note was successfully updated"
    click_on "Back"
  end

  test "should destroy Note" do
    visit note_url(@note)
    click_on "Destroy this note", match: :first

    assert_text "Note was successfully destroyed"
  end
end
