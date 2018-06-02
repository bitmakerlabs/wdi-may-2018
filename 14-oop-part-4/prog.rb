require_relative 'student'
require_relative 'professor'
require_relative 'magicDepartment' 

stewie = Student.new("Stewie","Griffin")
meg = Student.new("Meg","Griffin")
chris = Student.new("Chris","Griffin")
lois = Student.new("lois","Griffin")
peter = Student.new("Peter","Griffin")

students = []

students << stewie
students << meg
students << chris
students << lois
students << peter


snape = MagicDepartment.new("Severus","Snape")
snape.fullname

# p stewie
# snape.teach(stewie)

# p stewie

# snape.teachCohort(students)

# meg.slack
# stewie.slack

# p students
p snape.fee

# snape.finalMarks(5,students)
# p students
