void main() {
  Student stud = Student("Venky", 'Cse', 123456);
  stud.getStudentDetails();

  College college = College('venky', 'Cse', 123456, 'NEC');
  college.collegeDetails();
}

class Student {
  // Variables
  String name;
  String branch;
  int rollNumber;

  // Constructor
  Student(this.name, this.branch, this.rollNumber);

  //Method
  void getStudentDetails() {
    print(
        "My name is $name from $branch branch and my rollNumber is $rollNumber");
  }
}

// Inheritance

class College extends Student with StudyPerform, CulturePerform {
  String collegeName;

  College(super.name, super.branch, super.rollNumber, this.collegeName);

  void collegeDetails() {
    super.getStudentDetails();
    print('I am Studying at $collegeName.');
    studentPerformance();
    culturePerformance();
  }
}

// Mixin

mixin StudyPerform {
  void studentPerformance() {
    print("He is a average student");
  }
}

mixin CulturePerform {
  void culturePerformance() {
    print("He is actively participate in culture's");
  }
}
