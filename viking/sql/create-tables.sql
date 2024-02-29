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

create table site
(
    id            integer not null primary key autoincrement,
    name          text,
    url           text,
    active        boolean,
    scenario      text,
    extract_rules text
);

create index site_name_index
    on site (name);
