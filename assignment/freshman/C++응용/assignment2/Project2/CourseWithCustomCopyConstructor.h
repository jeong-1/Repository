#ifndef COURSE_H
#define COURSE_H
#include <string>
using namespace std;

class Course
{
public:
	Course(const string& couseName, int capacity);
	~Course();
	Course(const Course&);
	string getCourseName() const;
	void addStudent(const string& name);
	void dropStudent(const string& name);
	string* getStudents() const;
	int getNumberOfStudents() const;

private:
	string courseName;
	string* students;
	int numberOfStudents;
	int capacity;
};

#endif