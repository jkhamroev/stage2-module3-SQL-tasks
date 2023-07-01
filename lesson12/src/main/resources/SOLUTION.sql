alter table mark drop constraint mark_student_id_fkey;
alter table payment drop constraint payment_student_id_fkey;
alter table payment drop constraint payment_type_id_fkey;
alter table mark add constraint mark_student_id_fkey foreign key (student_id) references student(id) on delete cascade;
alter table payment add constraint payment_student_id_fkey foreign key (student_id) references student(id) on delete cascade;
alter table payment add constraint payment_type_id_fkey foreign key (type_id) references paymenttype(id) on delete cascade;

delete from student where id in (select distinct student_id from mark join subject on (subject.id = mark.subject_id) where grade >= 4);
delete from student where id in (select distinct student_id from student join mark on student.id = mark.student_id where mark.mark < 4);
delete from paymenttype where name = 'DAILY';
delete from mark where mark < 7;