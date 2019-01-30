# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Lesson.destroy_all
Comment.destroy_all
UserLesson.destroy_all

User.create(username: "eklimowich", password: "e", first_name: "Eric", last_name: "Klimowich", grade_teaching: "4th", subject_teaching: "ELA")
User.create(username: "mkuriscak", password: "m", first_name: "Mike", last_name: "Kuriscak", grade_teaching: "8th", subject_teaching: "Social Studies")
User.create(username: "dgrigal", password: "d", first_name: "Daniel", last_name: "Grigal", grade_teaching: "5th", subject_teaching: "PE")
User.create(username: "jkassick", password: "j", first_name: "Joseph", last_name: "Kassick", grade_teaching: "2nd", subject_teaching: "All")

Lesson.create(title: "Lesson 1", description: "This is a blub talking all about the details and benefits of using Lesson Plan #1", grade: "4th", subject: "Math", times_used: 1, added_by: 1, file: "File 1")
Lesson.create(title: "Lesson 2", description: "This is a blub talking all about the details and benefits of using Lesson Plan #2", grade: "4th", subject: "ELA", times_used: 2, added_by: 1, file: "File 2")
Lesson.create(title: "Lesson 3", description: "This is a blub talking all about the details and benefits of using Lesson Plan #3", grade: "4th", subject: "Social Studies", times_used: 3, added_by: 1, file: "File 3")
Lesson.create(title: "Lesson 4", description: "This is a blub talking all about the details and benefits of using Lesson Plan #4", grade: "4th", subject: "Science", times_used: 4, added_by: 1, file: "File 4")
Lesson.create(title: "Lesson 5", description: "This is a blub talking all about the details and benefits of using Lesson Plan #5", grade: "8th", subject: "Math", times_used: 5, added_by: 2, file: "File 5")
Lesson.create(title: "Lesson 6", description: "This is a blub talking all about the details and benefits of using Lesson Plan #6", grade: "8th", subject: "ELA", times_used: 6, added_by: 2, file: "File 6")
Lesson.create(title: "Lesson 7", description: "This is a blub talking all about the details and benefits of using Lesson Plan #7", grade: "8th", subject: "Social Studies", times_used: 7, added_by: 2, file: "File 7")
Lesson.create(title: "Lesson 8", description: "This is a blub talking all about the details and benefits of using Lesson Plan #8", grade: "8th", subject: "Science", times_used: 8, added_by: 2, file: "File 8")
Lesson.create(title: "Lesson 9", description: "This is a blub talking all about the details and benefits of using Lesson Plan #9", grade: "5th", subject: "Math", times_used: 9, added_by: 3, file: "File 9")
Lesson.create(title: "Lesson 10", description: "This is a blub talking all about the details and benefits of using Lesson Plan #10", grade: "5th", subject: "ELA", times_used: 10, added_by: 3, file: "File 10")
Lesson.create(title: "Lesson 11", description: "This is a blub talking all about the details and benefits of using Lesson Plan #11", grade: "5th", subject: "Social Studies", times_used: 11, added_by: 3, file: "File 11")
Lesson.create(title: "Lesson 12", description: "This is a blub talking all about the details and benefits of using Lesson Plan #12", grade: "5th", subject: "Science", times_used: 12, added_by: 3, file: "File 12")
Lesson.create(title: "Lesson 13", description: "This is a blub talking all about the details and benefits of using Lesson Plan #13", grade: "2nd", subject: "Math", times_used: 13, added_by: 4, file: "File 13")
Lesson.create(title: "Lesson 14", description: "This is a blub talking all about the details and benefits of using Lesson Plan #14", grade: "2nd", subject: "ELA", times_used: 14, added_by: 4, file: "File 14")
Lesson.create(title: "Lesson 15", description: "This is a blub talking all about the details and benefits of using Lesson Plan #15", grade: "2nd", subject: "Social Studies", times_used: 15, added_by: 4, file: "File 15")
Lesson.create(title: "Lesson 16", description: "This is a blub talking all about the details and benefits of using Lesson Plan #16", grade: "2nd", subject: "Science", times_used: 16, added_by: 4, file: "File 16")

Comment.create(content: "This is a comment about Lesson 1", rating: 4, user_id: 2, lesson_id: 1)
Comment.create(content: "This is another comment about Lesson 1", rating: 3, user_id: 3, lesson_id: 1)
Comment.create(content: "This is the third comment about Lesson 1", rating: 2, user_id: 4, lesson_id: 1)
Comment.create(content: "This is the last comment about Lesson 1", rating: 1, user_id: 3, lesson_id: 1)
Comment.create(content: "This is a comment about Lesson 2", rating: 4, user_id: 2, lesson_id: 2)
Comment.create(content: "This is another comment about Lesson 2", rating: 3, user_id: 3, lesson_id: 2)
Comment.create(content: "This is the third comment about Lesson 2", rating: 2, user_id: 4, lesson_id: 2)
Comment.create(content: "This is the last comment about Lesson 2", rating: 1, user_id: 3, lesson_id: 2)
Comment.create(content: "This is a comment about Lesson 3", rating: 4, user_id: 2, lesson_id: 3)
Comment.create(content: "This is another comment about Lesson 3", rating: 3, user_id: 3, lesson_id: 3)
Comment.create(content: "This is the third comment about Lesson 3", rating: 2, user_id: 4, lesson_id: 3)
Comment.create(content: "This is the last comment about Lesson 3", rating: 1, user_id: 3, lesson_id: 3)
Comment.create(content: "This is a comment about Lesson 4", rating: 4, user_id: 2, lesson_id: 4)
Comment.create(content: "This is another comment about Lesson 4", rating: 3, user_id: 3, lesson_id: 4)
Comment.create(content: "This is the third comment about Lesson 4", rating: 2, user_id: 4, lesson_id: 4)
Comment.create(content: "This is the last comment about Lesson 4", rating: 1, user_id: 3, lesson_id: 4)
Comment.create(content: "This is a comment about Lesson 5", rating: 4, user_id: 2, lesson_id: 5)
Comment.create(content: "This is another comment about Lesson 5", rating: 3, user_id: 3, lesson_id: 5)
Comment.create(content: "This is the third comment about Lesson 5", rating: 2, user_id: 4, lesson_id: 5)
Comment.create(content: "This is the last comment about Lesson 5", rating: 1, user_id: 3, lesson_id: 5)
Comment.create(content: "This is a comment about Lesson 6", rating: 4, user_id: 2, lesson_id: 6)
Comment.create(content: "This is another comment about Lesson 6", rating: 3, user_id: 3, lesson_id: 6)
Comment.create(content: "This is the third comment about Lesson 6", rating: 2, user_id: 4, lesson_id: 6)
Comment.create(content: "This is the last comment about Lesson 6", rating: 1, user_id: 3, lesson_id: 6)
Comment.create(content: "This is a comment about Lesson 7", rating: 4, user_id: 2, lesson_id: 7)
Comment.create(content: "This is another comment about Lesson 7", rating: 3, user_id: 3, lesson_id: 7)
Comment.create(content: "This is the third comment about Lesson 7", rating: 2, user_id: 4, lesson_id: 7)
Comment.create(content: "This is the last comment about Lesson 7", rating: 1, user_id: 3, lesson_id: 7)
Comment.create(content: "This is a comment about Lesson 8", rating: 4, user_id: 2, lesson_id: 8)
Comment.create(content: "This is another comment about Lesson 8", rating: 3, user_id: 3, lesson_id: 8)
Comment.create(content: "This is the third comment about Lesson 8", rating: 2, user_id: 4, lesson_id: 8)
Comment.create(content: "This is the last comment about Lesson 8", rating: 1, user_id: 3, lesson_id: 8)
Comment.create(content: "This is a comment about Lesson 9", rating: 4, user_id: 2, lesson_id: 9)
Comment.create(content: "This is another comment about Lesson 9", rating: 3, user_id: 3, lesson_id: 9)
Comment.create(content: "This is the third comment about Lesson 9", rating: 2, user_id: 4, lesson_id: 9)
Comment.create(content: "This is the last comment about Lesson 9", rating: 1, user_id: 3, lesson_id: 9)
Comment.create(content: "This is a comment about Lesson 10", rating: 4, user_id: 2, lesson_id: 10)
Comment.create(content: "This is another comment about Lesson 10", rating: 3, user_id: 3, lesson_id: 10)
Comment.create(content: "This is the third comment about Lesson 10", rating: 2, user_id: 4, lesson_id: 10)
Comment.create(content: "This is the last comment about Lesson 10", rating: 1, user_id: 3, lesson_id: 10)
Comment.create(content: "This is a comment about Lesson 11", rating: 4, user_id: 2, lesson_id: 11)
Comment.create(content: "This is another comment about Lesson 11", rating: 3, user_id: 3, lesson_id: 11)
Comment.create(content: "This is the third comment about Lesson 11", rating: 2, user_id: 4, lesson_id: 11)
Comment.create(content: "This is the last comment about Lesson 11", rating: 1, user_id: 3, lesson_id: 11)
Comment.create(content: "This is a comment about Lesson 12", rating: 4, user_id: 2, lesson_id: 12)
Comment.create(content: "This is another comment about Lesson 12", rating: 3, user_id: 3, lesson_id: 12)
Comment.create(content: "This is the third comment about Lesson 12", rating: 2, user_id: 4, lesson_id: 12)
Comment.create(content: "This is the last comment about Lesson 12", rating: 1, user_id: 3, lesson_id: 12)
Comment.create(content: "This is a comment about Lesson 13", rating: 4, user_id: 2, lesson_id: 13)
Comment.create(content: "This is another comment about Lesson 13", rating: 3, user_id: 3, lesson_id: 13)
Comment.create(content: "This is the third comment about Lesson 13", rating: 2, user_id: 4, lesson_id: 13)
Comment.create(content: "This is the last comment about Lesson 13", rating: 1, user_id: 3, lesson_id: 13)
Comment.create(content: "This is a comment about Lesson 14", rating: 4, user_id: 2, lesson_id: 14)
Comment.create(content: "This is another comment about Lesson 14", rating: 3, user_id: 3, lesson_id: 14)
Comment.create(content: "This is the third comment about Lesson 14", rating: 2, user_id: 4, lesson_id: 14)
Comment.create(content: "This is the last comment about Lesson 14", rating: 1, user_id: 3, lesson_id: 14)
Comment.create(content: "This is a comment about Lesson 15", rating: 4, user_id: 2, lesson_id: 15)
Comment.create(content: "This is another comment about Lesson 15", rating: 3, user_id: 3, lesson_id: 15)
Comment.create(content: "This is the third comment about Lesson 15", rating: 2, user_id: 4, lesson_id: 15)
Comment.create(content: "This is the last comment about Lesson 15", rating: 1, user_id: 3, lesson_id: 15)
Comment.create(content: "This is a comment about Lesson 16", rating: 4, user_id: 2, lesson_id: 16)
Comment.create(content: "This is another comment about Lesson 16", rating: 3, user_id: 3, lesson_id: 16)
Comment.create(content: "This is the third comment about Lesson 16", rating: 2, user_id: 4, lesson_id: 16)
Comment.create(content: "This is the last comment about Lesson 16", rating: 1, user_id: 3, lesson_id: 16)

# create_table "user_lessons", force: :cascade do |t|
#   t.integer "user_id"
#   t.integer "lesson_id"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end
