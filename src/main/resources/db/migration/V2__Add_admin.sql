insert into usr (id, username, password, active)
    values (1, 'admin', '$2a$08$5.4FjqpRx8JUrsOKSvQAp.BG8uYg7J3d6eJo7iXnZtg9BTTlLwvJG', true);

insert into user_role (user_id, roles)
    values (1, 'USER'), (1, 'ADMIN');
