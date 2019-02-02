# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
GradeLevel.destroy_all
GradeSubject.destroy_all
Lesson.destroy_all
Comment.destroy_all

User.create(username: "eklimowich", password: "e", first_name: "Eric", last_name: "Klimowich")
User.create(username: "mkuriscak", password: "m", first_name: "Mike", last_name: "Kuriscak")

GradeLevel.create(grade: "4th", user_id: 1)
GradeLevel.create(grade: "8th", user_id: 2)

GradeSubject.create(subject: "ELA", grade_level_id: 1)
GradeSubject.create(subject: "Social Studies", grade_level_id: 2)

Lesson.create(title: "Lesson 1", description: "This is a blurb talking all about the details and benefits of using Lesson Plan #1", file: "File 1", times_used: 1, grade_subject_id: 1)
Lesson.create(title: "Lesson 2", description: "This is a blurb talking all about the details and benefits of using Lesson Plan #2", file: "File 2", times_used: 2, grade_subject_id: 1)
Lesson.create(title: "Lesson 3", description: "This is a blurb talking all about the details and benefits of using Lesson Plan #3", file: "File 3", times_used: 3, grade_subject_id: 1)

Lesson.create(title: "Lesson 1", description: "This is a blub talking all about the details and benefits of using Lesson Plan #1", file: "File 1", times_used: 1, grade_subject_id: 2)
Lesson.create(title: "Lesson 2", description: "This is a blub talking all about the details and benefits of using Lesson Plan #2", file: "File 2", times_used: 2, grade_subject_id: 2)
Lesson.create(title: "Lesson 3", description: "This is a blub talking all about the details and benefits of using Lesson Plan #3", file: "File 3", times_used: 3, grade_subject_id: 2)

Comment.create(content: "This is a comment about Lesson 1", rating: 4, user_id: 2, lesson_id: 1)
Comment.create(content: "This is a comment about Lesson 1", rating: 3, user_id: 2, lesson_id: 1)
Comment.create(content: "This is a comment about Lesson 3", rating: 3, user_id: 2, lesson_id: 3)

Comment.create(content: "This is a comment about Lesson 1", rating: 4, user_id: 1, lesson_id: 1)
Comment.create(content: "This is a comment about Lesson 2", rating: 2, user_id: 1, lesson_id: 2)
Comment.create(content: "This is a comment about Lesson 2", rating: 3, user_id: 1, lesson_id: 2)
