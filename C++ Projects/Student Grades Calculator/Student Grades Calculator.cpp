#include <iostream>

using namespace std;

const int MAX_STUDENTS = 100; // Maximum number of students
const int MAX_SUBJECTS = 5; // Maximum number of subjects per student
const int MIN_GRADE = 0; // Minimum grade value
const int MAX_GRADE = 100; // Maximum grade value
const int PASSING_GRADE = 60; // Minimum passing grade

int main() {
  int numStudents; // Number of students
  int grades[MAX_STUDENTS][MAX_SUBJECTS]; // Array to store grades

  // Prompt the user to enter the number of students
  cout << "Enter the number of students (1 to " << MAX_STUDENTS << "): ";
  cin >> numStudents;

  // Validate the number of students
  while (numStudents < 1 || numStudents > MAX_STUDENTS) {
    cout << "Invalid input! Please enter a number between 1 and " << MAX_STUDENTS << ": ";
    cin >> numStudents;
  }

  // Prompt the user to enter the grades for each student's subjects
  for (int i = 0; i < numStudents; i++) {
    cout << "Enter the grades for student " << i + 1 << " (0 to 100): " << endl;
    for (int j = 0; j < MAX_SUBJECTS; j++) {
      cout << "Subject " << j + 1 << ": ";
      cin >> grades[i][j];

      // Validate the grade
      while (grades[i][j] < MIN_GRADE || grades[i][j] > MAX_GRADE) {
        cout << "Invalid input! Please enter a number between 0 and 100: ";
        cin >> grades[i][j];
      }
    }
  }

  // Display the report for each student
  cout << endl;
  cout << "Individual Reports" << endl;
  cout << "------------------" << endl;
  for (int i = 0; i < numStudents; i++) {
    int total = 0; // Total grade for all subjects
    cout << "Student " << i + 1 << endl;
    cout << "Subject" << "\t\t\t" << "Grade" << "\t\t\t" << "Status" << endl;
    for (int j = 0; j < MAX_SUBJECTS; j++) {
      total += grades[i][j];
      cout << j + 1 << "\t\t\t" << grades[i][j];
      if (grades[i][j] >= PASSING_GRADE) {
        cout << "\t\t\t" << "Pass" << endl;
      } else {
        cout << "\t\t\t" << "Fail" << endl;
      }
    }
    cout << "Total" << "\t\t" << total << endl;
  }

  // Display the global report of the pass/fail status of all students
  cout << endl;
  cout << "Global Report" << endl;
  cout << "-------------" << endl;
  cout << "Student" << "\t\t\t" << "Status" << endl;
  int numPassed = 0; // Number of students who passed
  int numFailed = 0; // Number of students who failed
  for (int i = 0; i < numStudents; i++) {
    int total = 0; // Total grade for all subjects
    for (int j = 0; j < MAX_SUBJECTS; j++) {
      total += grades[i][j];
    }
    if (total >= PASSING_GRADE * MAX_SUBJECTS) {
      cout << i + 1 << "\t\t\t" << "Pass" << endl;
      numPassed++;
    } else {
      cout << i + 1 << "\t\t\t" << "Fail" << endl;
      numFailed++;
    }
  }
  cout << endl;
  cout << "Number of Passed Students: " << numPassed << endl;
  cout << "Number of Failed Students: " << numFailed << endl;

  return 0;
}