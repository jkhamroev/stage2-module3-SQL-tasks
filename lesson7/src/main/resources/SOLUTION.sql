select * from mark where mark > 6 order by mark desc;
select * from payment where amount < 300 order by amount asc;
select * from paymenttype order by name asc;
select * from student order by name desc;
select student.* from student join payment on student.id = payment.student_id where payment.amount > 1000 order by student.birthday asc;