use movie;

select *from tamil_movie;
delete from tamil_movie where name='Vikram';

delete from tamil_movie where name='Master' and id=2;
delete from tamil_movie where name='96' or id=9;
delete from tamil_movie where not name='vikram';

delete from kannada_movie where name='Lucia' AND id=6;
delete from kannada_movie where name='kgf' or id=4;
delete from kannada_movie where not no_of_screens =850;

select * from kannada_movie;

delete from hindi_movie where name='dangal' AND id=1;
delete from hindi_movie where name='Shershaah' or id=4;
delete from hindi_movie where not no_of_screens =5500;

select * from hindi_movie;