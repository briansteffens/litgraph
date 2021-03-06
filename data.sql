insert into authors (name) values ('Homer');
set @homer_id = last_insert_id();

insert into books (author_id, title) values (@homer_id, 'The Iliad');
set @the_iliad_id = last_insert_id();

insert into books (author_id, title) values (@homer_id, 'The Odyssey');
set @the_odyssey_id = last_insert_id();

insert into authors (name) values ('Various');
set @various_id = last_insert_id();

insert into books (author_id, title) values (@various_id, 'The Bible');
set @bible_id = last_insert_id();

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

insert into connections (book_id, references_id)
values (@infinite_jest_id, @hamlet_id);

insert into authors (name) values ('Virgil');
set @virgil_id = last_insert_id();

insert into books (author_id, title) values (@virgil_id, 'The Aeneid');
set @aeneid_id = last_insert_id();

insert into authors (name) values ('Marcel Proust');
set @proust_id = last_insert_id();

insert into books (author_id, title) values (@proust_id, 'Swann\'s Way');
set @swanns_way = last_insert_id();

insert into connections (book_id, references_id)
values (@swanns_way, @the_odyssey_id);

insert into connections (book_id, references_id)
values (@swanns_way, @the_aeneid);

insert into authors (name) values ('Herman Melville');
set @melville_id = last_insert_id();

insert into books (author_id, title) values (@melville_id, 'Moby Dick');
set @moby_dick_id = last_insert_id();

insert into connections (book_id, references_id)
values (@moby_dick_id, @the_bible);

insert into connections (book_id, references_id)
values (@moby_dick_id, @the_iliad);
