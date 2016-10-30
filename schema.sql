create table authors
(
    id int not null auto_increment,
    name varchar(128),

    primary key (id),
    unique (name)
);

create table books
(
    id int not null auto_increment,
    author_id int not null,
    title varchar(256) not null,

    primary key (id),
    foreign key (author_id) references authors (id)
);

create table connections
(
    id int not null auto_increment,
    book_id int not null,
    references_id int not null,
    description varchar(256),

    primary key (id),
    foreign key (book_id) references books (id),
    foreign key (references_id) references books (id),
    unique (book_id, references_id)
);
