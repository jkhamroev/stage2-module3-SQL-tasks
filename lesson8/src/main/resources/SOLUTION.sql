select birthday from student order by birthday desc limit 1;
select payment_date from payment order by payment_date limit 1;
select avg(mark.mark) from mark inner join subject on mark.subject_id = subject.id where subject.name = 'Math';
select min(amount) from payment inner join paymenttype on payment.type_id = paymenttype.id where paymenttype.name = 'WEEKLY';