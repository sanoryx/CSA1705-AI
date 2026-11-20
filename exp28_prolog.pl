student(101, 'Sanjay').
student(102, 'Arun').
student(103, 'Rahul').
student(104, 'Priya').

teacher(201, 'Ramesh').
teacher(202, 'Kumar').
teacher(203, 'Divya').

subject(301, 'Artificial Intelligence').
subject(302, 'Mathematics').
subject(303, 'Python').
subject(304, 'Database Management').

teaches(201, 301).
teaches(202, 302).
teaches(203, 303).
teaches(201, 304).

enrolled(101, 301).
enrolled(101, 303).
enrolled(102, 302).
enrolled(103, 304).
enrolled(104, 303).

student_subject(Student, Subject) :-
    student(StudentID, Student),
    enrolled(StudentID, SubjectID),
    subject(SubjectID, Subject).

teacher_subject(Teacher, Subject) :-
    teacher(TeacherID, Teacher),
    teaches(TeacherID, SubjectID),
    subject(SubjectID, Subject).