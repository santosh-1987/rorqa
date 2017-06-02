require 'test_helper'

class SubjectTest < ActiveSupport::TestCase
  fixtures :subjects
  test "should not save subject without name" do
    subject = Subject.new
    assert_not subject.save
  end

  test "should save subject name" do
    subject = Subject.new(:name => "Ruby").save
    assert_equal true, subject
  end

  test "Retreive from Fixture" do
    assert_equal "Rails", subjects(:one).name
    assert_equal "Maths", subjects(:two).name
    assert_not_empty(subjects(:one).name)
  end

end
