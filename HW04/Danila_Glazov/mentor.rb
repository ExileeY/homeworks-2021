# frozen_string_literal: false

# The Mentor class is used to create objects that can interact with student objects.
class Mentor
  attr_reader :notifications
  attr_writer :student

  def initialize(name: '', surname: '')
    @name = name
    @surname = surname
    @notifications = []
    @student = nil
  end

  def add_homework(title: '', description: '', student: nil)
    student.notifications.push("Title - #{title}, Description - #{description}")
    { title: title, description: description }
  end

  def subscribe_to!(student)
    self.student = student
    student.mentor = self
  end

  def mark_as_read!
    @notifications.clear
  end

  def reject_to_work!(homework)
    homework[:status] = 'rejected'
    @student.notifications.push("Your homework status: #{homework.values.join('|')}")
  end

  def accept!(homework)
    homework[:status] = 'accepted'
    @student.notifications.push("Your homework status: #{homework.values.join('|')}")
  end
end
