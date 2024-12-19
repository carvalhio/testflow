# encoding: UTF-8

# Grades
grades = [
  "1o Ano", "2o Ano", "3o Ano", "4o Ano", "5o Ano", 
  "6o Ano", "7o Ano", "8o Ano", "9o Ano", 
  "1a Serie", "2a Serie", "3a Serie"
]
grades.each { |grade| Grade.create(name: grade) }

# Subjects
subjects = [
  "Portugues", "Arte", "Literatura", "Redacao", "Matematica", "Ciencias", 
  "Historia", "Geografia", "Ingles", "Espanhol", "Fisica", "Quimica", 
  "Biologia", "Ensino Religioso", "Educacao Fisica", "Filosofia", "Sociologia", 
  "Natureza e Sociedade"
]
subjects.each { |subject| Subject.create(name: subject) }

# Shifts
shifts = ["Manha", "Tarde"]
shifts.each { |shift| Shift.create(name: shift) }

# Professors
professors = [
  "Liliane Alves", "Junior Alves", "Junior Liberato", "Maria Jose", 
  "Saymon Ribeiro", "Sarah Medeiros", "Alexandra Xavier", "Felipe dos Anjos", 
  "Ana Sheila", "Charles Ribeiro", "Kaires", "Andrea Azevedo", 
  "Julio Cesar", "Clesio Farrapo", "Hernando Cubaque", "Thadeu Carneiro", 
  "Rogelma Soares", "Gleicianny Mendes", "Ceica Solon", "Edilson Frota", 
  "Vanessa Timbo", "Kencia Moura", "Tiana Mara", "Allan Liberato", 
  "Neuzimar Azevedo", "Geovani Teotonio", "Thiago Oliveira", "Raniere Aguiar"
]
professors.each { |professor| Professor.create(name: professor) }

Exam.create!(
  grade: Grade.find_by(name: "6o Ano"),
  subject: Subject.find_by(name: "Portugues"),
  shift: Shift.find_by(name: "Manha"),
  professor: Professor.find_by(name: "Liliane Alves"),
  step: 1,
  exam_type: "Parcial",
  date: "2024-02-20",
  status: "Pendente"
)

Exam.create!(
  grade: Grade.find_by(name: "7o Ano"),
  subject: Subject.find_by(name: "Matematica"),
  shift: Shift.find_by(name: "Tarde"),
  professor: Professor.find_by(name: "Junior Alves"),
  step: 1,
  exam_type: "Global",
  date: "2024-03-15",
  status: "Recebido"
)
