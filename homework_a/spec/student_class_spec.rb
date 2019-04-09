require('minitest/autorun')
require('minitest/rg')
require_relative('../student_class')

class TestStudentAccount < MiniTest::Test

def test_to_get_student_name
 student_account = StudentAccount.new("James", "E30")
 assert_equal("James", student_account.name)
end


def test_to_get_cohort_name
 student_account = StudentAccount.new("James", "E30")
 assert_equal("E30", student_account.cohort)
end


def test_to_change_student_name
 student_account = StudentAccount.new("James", "E30")
 student_account.name = "Bob"
 assert_equal("Bob", student_account.name)
end

def test_to_change_student_cohort
 student_account = StudentAccount.new("James", "E30")
 student_account.cohort = "E25"
 assert_equal("E25", student_account.cohort)
end

def test_to_check_if_student_can_talk
 student_account = StudentAccount.new("James", "E30")
 student_sound_bite = student_account.sound_bite()
 assert_equal("I can talk", student_sound_bite)
end

def test_favourite_programming_language
  student_account = StudentAccount.new("James", "E30")
  favourite_language = student_account.fav_language("Ruby!")
  assert_equal("Ruby!", favourite_language)
end


end
