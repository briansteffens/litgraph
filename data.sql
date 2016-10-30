insert into authors (name) values ('Homer');
set @homer_id = last_insert_id();

insert into books (author_id, title) values (@homer_id, 'The Odyssey');
set @the_odyssey_id = last_insert_id();

insert into authors (name) values ('William Shakespeare');
set @shakespeare_id = last_insert_id();

insert into books (author_id, title) values (@shakespeare_id, 'Hamlet');
set @hamlet_id = last_insert_id();

insert into connections (book_id, references_id)
values (@hamlet_id, @the_odyssey_id);

insert into authors (name) values ('James Joyce');
set @joyce_id = last_insert_id();

insert into books (author_id, title) values (@joyce_id, 'Ulysses');
set @ulysses_id = last_insert_id();

insert into connections (book_id, references_id)
values (@ulysses_id, @the_odyssey_id);

insert into connections (book_id, references_id)
values (@ulysses_id, @hamlet_id);

insert into authors (name) values ('David Foster Wallace');
set @wallace_id = last_insert_id();

insert into books (author_id, title) values (@wallace_id, 'Infinite Jest');
set @infinite_jest_id = last_insert_id();

insert into connections (book_id, references_id)
values (@infinite_jest_id, @ulysses_id);
