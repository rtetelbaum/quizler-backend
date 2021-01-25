Answer.destroy_all
Question.destroy_all
Quiz.destroy_all
User.destroy_all

user1 = User.create(email: 'quizlernotify@gmail.com', first_name: 'Roman', last_name: 'Tetelbaum', password: 'pass123')

quiz1 = Quiz.create(quizmaker_name: 'Roman Tetelbaum', quizmaker_email: 'quizlernotify@gmail.com', title: 'JavaScript', subject: 'Coding Review', user: user1)
quiz2 = Quiz.create(quizmaker_name: 'Roman Tetelbaum', quizmaker_email: 'quizlernotify@gmail.com', title: 'Top 10 Kubernetes Interview Questions', subject: 'Interview Prep', user: user1)
quiz3 = Quiz.create(quizmaker_name: 'Roman Tetelbaum', quizmaker_email: 'quizlernotify@gmail.com', title: 'Top Common Interview PHP Questions', subject: 'Interview Prep', user: user1)
quiz4 = Quiz.create(quizmaker_name: 'Roman Tetelbaum', quizmaker_email: 'quizlernotify@gmail.com', title: 'Basic Dockerfile Quiz', subject: 'DevOps Review', user: user1)
quiz5 = Quiz.create(quizmaker_name: 'Roman Tetelbaum', quizmaker_email: 'quizlernotify@gmail.com', title: 'Common HTML Interview Questions', subject: 'Interview Prep', user: user1)
quiz6 = Quiz.create(quizmaker_name: 'Roman Tetelbaum', quizmaker_email: 'quizlernotify@gmail.com', title: 'Linux Review', subject: 'Operating Systems', user: user1)
quiz7 = Quiz.create(quizmaker_name: 'Roman Tetelbaum', quizmaker_email: 'quizlernotify@gmail.com', title: 'MySQL Review', subject: 'Database SYstems', user: user1)
quiz8 = Quiz.create(quizmaker_name: 'Roman Tetelbaum', quizmaker_email: 'quizlernotify@gmail.com', title: 'BASH Commands', subject: 'Coding', user: user1)
quiz9 = Quiz.create(quizmaker_name: 'Roman Tetelbaum', quizmaker_email: 'quizlernotify@gmail.com', title: 'Laravel Review', subject: 'Coding', user: user1)
quiz10 = Quiz.create(quizmaker_name: 'Roman Tetelbaum', quizmaker_email: 'quizlernotify@gmail.com', title: 'WordPress Review', subject: 'Content Management Systems', user: user1)

question1 = Question.create(question: 'Inside which HTML element do we put the JavaScript?', quiz: quiz1)
answer1 = Answer.create(answer: '<javascript>', correct: false, question: question1)
answer2 = Answer.create(answer: '<scripting>', correct: false, question: question1)
answer3 = Answer.create(answer: '<js>', correct: false, question: question1)
answer4 = Answer.create(answer: '<script>', correct: true, question: question1)

question2 = Question.create(question: 'What is the correct JavaScript syntax to change the content of the HTML element below?', quiz: quiz1)
answer5 = Answer.create(answer: '#demo.innerHTML = "Hello World!";', correct: false, question: question2)
answer6 = Answer.create(answer: 'document.getElementByName("p").innerHTML = "Hello World!";', correct: false, question: question2)
answer7 = Answer.create(answer: 'document.getElement("p").innerHTML = "Hello World!";', correct: false, question: question2)
answer8 = Answer.create(answer: 'document.getElementById("demo").innerHTML = "Hello World!";', correct: true, question: question2)

question3 = Question.create(question: 'Where is the correct place to insert a JavaScript?', quiz: quiz1)
answer9 = Answer.create(answer: 'The <head> section', correct: false, question: question3)
answer10 = Answer.create(answer: 'Both the <head> section and the <body> section are correct', correct: true, question: question3)
answer11 = Answer.create(answer: 'The <footer>', correct: false, question: question3)
answer12 = Answer.create(answer: 'The <body> section', correct: false, question: question3)

question4 = Question.create(question: 'How do you create a function in JavaScript?', quiz: quiz1)
answer13 = Answer.create(answer: 'function myFunction()', correct: true, question: question4)
answer14 = Answer.create(answer: 'function = myFunction()', correct: false, question: question4)
answer15 = Answer.create(answer: 'function:myFunction()', correct: false, question: question4)

question5 = Question.create(question: 'How to write an IF statement in JavaScript?', quiz: quiz1)
answer16 = Answer.create(answer: 'if i = 5 then', correct: false, question: question5)
answer17 = Answer.create(answer: 'if (i == 5)', correct: true, question: question5)
answer18 = Answer.create(answer: 'if i == 5 then', correct: false, question: question5)
answer19 = Answer.create(answer: 'if i = 5', correct: false, question: question5)

question6 = Question.create(question: 'How can you add a comment in a JavaScript?', quiz: quiz1)
answer20 = Answer.create(answer: '//This is a comment', correct: true, question: question6)
answer21 = Answer.create(answer: '<!--This is a comment-->', correct: false, question: question6)
answer22 = Answer.create(answer: '\'This is a comment', correct: false, question: question6)

question7 = Question.create(question: 'What is the correct way to write a JavaScript array?', quiz: quiz1)
answer23 = Answer.create(answer: 'var colors = 1 = ("red"), 2 = ("green"), 3 = ("blue")', correct: false, question: question7)
answer24 = Answer.create(answer: 'var colors = (1:"red", 2:"green", 3:"blue")', correct: false, question: question7)
answer25 = Answer.create(answer: 'var colors = ["red", "green", "blue"]', correct: true, question: question7)
answer26 = Answer.create(answer: 'var colors = "red", "green", "blue"', correct: false, question: question7)

question8 = Question.create(question: 'What is the correct JavaScript syntax for opening a new window called "w2" ?', quiz: quiz1)
answer27 = Answer.create(answer: 'w2 = window.new("http://www.w3schools.com");', correct: false, question: question8)
answer28 = Answer.create(answer: 'w2 = window.open("http://www.w3schools.com");', correct: true, question: question8)

question9 = Question.create(question: 'How do you declare a JavaScript variable?', quiz: quiz1)
answer29 = Answer.create(answer: 'v carName;', correct: false, question: question9)
answer30 = Answer.create(answer: 'var carName;', correct: true, question: question9)
answer31 = Answer.create(answer: 'variable carName;', correct: false, question: question9)

question10 = Question.create(question: 'Is JavaScript case-sensitive?', quiz: quiz1)
answer32 = Answer.create(answer: 'Yes', correct: true, question: question10)
answer33 = Answer.create(answer: 'No', correct: false, question: question10)