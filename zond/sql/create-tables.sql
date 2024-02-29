create table settings
(
    id              integer not null primary key,
    api_key         text,
    default_country text
);

create table country
(
    id     integer not null primary key autoincrement,
    name   text,
    code   text,
    active boolean default true
);

create index country_name_index
    on country (name);
