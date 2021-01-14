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

quiz2 = Quiz.create(quizmaker: 'roman@mail.com', title: 'Second Grade Math Final', subject: 'Math', user: user1)

question3 = Question.create(question: 'What is 7 x 7?', quiz: quiz2)
answer7 = Answer.create(answer: '49', correct: true, question: question3)
answer8 = Answer.create(answer: '39', correct: false, question: question3)
answer9 = Answer.create(answer: '77', correct: false, question: question3)
answer10 = Answer.create(answer: '50', correct: false, question: question3)

question4 = Question.create(question: 'Does 3 squared = 9?', quiz: quiz2)
answer11 = Answer.create(answer: 'Yes', correct: true, question: question4)
answer12 = Answer.create(answer: 'No', correct: false, question: question4)

user2 = User.create(email: 'frank@mail.com', password: 'pass123')

quiz3 = Quiz.create(quizmaker: 'roman@mail.com', title: 'First Grade Math Final', subject: 'Math', user: user2)

question5 = Question.create(question: 'What is 2 + 3?', quiz: quiz3)
answer13 = Answer.create(answer: '4', correct: false, question: question5)
answer14 = Answer.create(answer: '9', correct: false, question: question5)
answer15 = Answer.create(answer: '5', correct: true, question: question5)
answer16 = Answer.create(answer: '6', correct: false, question: question5)

question6 = Question.create(question: 'Does 5 x 2 = 10?', quiz: quiz3)
answer17 = Answer.create(answer: 'Yes', correct: true, question: question6)
answer18 = Answer.create(answer: 'No', correct: false, question: question6)

quiz4 = Quiz.create(quizmaker: 'roman@mail.com', title: 'Second Grade Math Final', subject: 'Math', user: user2)

question7 = Question.create(question: 'What is 7 x 7?', quiz: quiz4)
answer19 = Answer.create(answer: '49', correct: true, question: question7)
answer20 = Answer.create(answer: '39', correct: false, question: question7)
answer21 = Answer.create(answer: '77', correct: false, question: question7)
answer22 = Answer.create(answer: '50', correct: false, question: question7)

question8 = Question.create(question: 'Does 3 squared = 9?', quiz: quiz4)
answer23 = Answer.create(answer: 'Yes', correct: true, question: question8)
answer24 = Answer.create(answer: 'No', correct: false, question: question8)