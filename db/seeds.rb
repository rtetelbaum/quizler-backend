Answer.destroy_all
Question.destroy_all
Quiz.destroy_all
User.destroy_all

user1 = User.create(email: 'roman@mail.com', password: 'pass123')

quiz1 = Quiz.create(quizmaker: 'roman@mail.com', title: 'First Grade Math Final', subject: 'Math', user: user1)

question1 = Question.create(question: 'What is 2 + 3?', quiz: quiz1)
answer1 = Answer.create(answer: '4', correct: false, question: question1)
answer2 = Answer.create(answer: '9', correct: false, question: question1)
answer3 = Answer.create(answer: '5', correct: true, question: question1)
answer4 = Answer.create(answer: '6', correct: false, question: question1)

question2 = Question.create(question: 'Does 5 x 2 = 10?', quiz: quiz1)
answer5 = Answer.create(answer: 'Yes', correct: true, question: question2)
answer6 = Answer.create(answer: 'No', correct: false, question: question2)