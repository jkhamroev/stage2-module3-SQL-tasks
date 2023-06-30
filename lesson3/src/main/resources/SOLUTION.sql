alter table student alter column birthday set not null;
alter table mark add check (mark >= 1 AND mark <= 10);
alter table mark alter column student_id set not null;
alter table mark alter column subject_id set not null;
alter table subject add check (grade >= 1 and grade <= 5);
alter table paymenttype add unique (name);
alter table payment alter column type_id set not null;
alter table payment alter column amount set not null;
alter table payment alter column payment_date set not null;