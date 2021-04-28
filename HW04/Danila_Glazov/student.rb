# frozen_string_literal: false

# The Student class is used to create objects that can interact with mentor objects.
class Student
  attr_reader :notifications, :homeworks
  attr_writer :mentor

  def initialize(name: '', surname: '')
    @name = name
    @surname = surname
    @notifications = []
    @homeworks = []
    @mentor = nil
  end

  def mark_as_read!
    @notifications.clear
  end

  def to_work!(homework)
    homework_info = "Title - #{homework[:title]}, description - #{homework[:description]}"
    message = "#{@name} is working on #{homework_info}"
    @homeworks.push(homework_info)
    @mentor.notifications.push(message)
  end

  def add_answer!(homework, answer)
    homework[:answer] = answer
  end

  def to_check!(homework)
    homework_to_check = homework.slice(:title, :description, :answer).values.join('|')
    @mentor.notifications.push("Homework to check: #{homework_to_check}")
  end
end
