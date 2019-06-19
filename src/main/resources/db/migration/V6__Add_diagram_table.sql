create table diagram (
    id bigint not null,
    name varchar(255),
    data varbinary(255),
    file_id int,
    user_id int,
    primary key (id)
);