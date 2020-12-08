create table t_role
(
    id   int8 not null,
    name varchar(255),
    primary key (id)
);
create table t_skateboard
(
    id          int8 generated by default as identity,
    description varchar(1000),
    image1      varchar(255),
    image2      varchar(255),
    name        varchar(255),
    price       int4 not null,
    size        float8,
    user_id     int8,
    primary key (id)
);
create table t_user
(
    id       int8 generated by default as identity,
    password varchar(255),
    username varchar(255),
    primary key (id)
);
create table t_user_roles
(
    user_id  int8 not null,
    roles_id int8 not null,
    primary key (user_id, roles_id)
);
create table t_user_skateboard
(
    user_id       int8 not null,
    skateboard_id int8 not null
);
alter table if exists t_user_skateboard
    add constraint UK_puariywaqncgquhemwrddl4ye unique (skateboard_id);
alter table if exists t_skateboard
    add constraint FKoneh236rw1wgdts08jcr2agkv foreign key (user_id) references t_user;
alter table if exists t_user_roles
    add constraint FKj47yp3hhtsoajht9793tbdrp4 foreign key (roles_id) references t_role;
alter table if exists t_user_roles
    add constraint FKpqntgokae5e703qb206xvfdk3 foreign key (user_id) references t_user;
alter table if exists t_user_skateboard
    add constraint FK5ssfhelrrn0quxsft2vvcujrr foreign key (skateboard_id) references t_skateboard;
alter table if exists t_user_skateboard
    add constraint FKhd65y7bp1d5071me7q5d9tdnf foreign key (user_id) references t_user;

INSERT INTO public.t_role(id, name)
VALUES (1, 'ROLE_USER'),
       (2, 'ROLE_ADMIN');
