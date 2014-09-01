require 'faker'

module QuestionImporter
  def self.import
    10.times do
      Question.create(title: Faker::Lorem.sentence,
                      content: Faker::Lorem.sentence,
                      :user_id => rand(1..10), score:0)
    end
  end
end

module UserImporter
  def self.import
    10.times do
      User.create(username: Faker::Internet.user_name,
                  email: Faker::Internet.email)
    end
  end
end

module AnswerImporter
  def self.import
    10.times do
      Answer.create(content: Faker::Lorem.sentence,
                    :user_id => rand(1..10))
    end
  end
end

QuestionImporter.import
AnswerImporter.import
UserImporter.import
