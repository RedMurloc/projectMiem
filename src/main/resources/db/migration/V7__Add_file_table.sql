create table file_data (
    id bigint not null,
    name varchar(255),
    columns varbinary(255),
    user_id int,
    primary key (id)
);