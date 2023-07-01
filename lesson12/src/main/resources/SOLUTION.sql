delete from student where id in (select distinct student_id from mark join subject on (subject.id = mark.subject_id) where grade >= 4);
delete from student where id in (select distinct student_id from student join mark on student.id = mark.student_id where mark.mark < 4);
delete from paymenttype where name = 'DAILY';
delete from mark where mark < 7;