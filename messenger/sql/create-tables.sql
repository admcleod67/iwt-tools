create table settings
(
    id      integer not null primary key,
    api_key text
);

create table country
(
    id     integer not null primary key,
    name   text,
    code   text,
    active boolean default true
);

create index country_name_index
    on country (name);

create table site
(
    id                 integer not null primary key,
    name               text,
    url                text,
    active             boolean,
    scenario           text,
    extract_rules      text,
    item_rules         text,
    default_country_id integer,
    foreign key (default_country_id) references country (id)
);

create index site_default_country_id_index
    on site (default_country_id);

create table search
(
    id         integer not null primary key,
    site_id    integer,
    terms      text,
    country_id integer,
    timestamp  text default CURRENT_TIMESTAMP,
    foreign key (site_id) references site (id)
);

create index search_site_id_index
    on search (site_id);

create index search_site_terms_index
    on search (terms);

create index search_site_timestamp_index
    on search (timestamp);

create table result
(
    id                     integer not null primary key,
    search_id              integer,
    name                   text,
    description            text,
    url                    text,
    product_id             text,
    image                  text,
    brand                  text,
    offer_price            text,
    offer_currency         text,
    offer_condition        text,
    offer_availability     text,
    seller_name            text,
    seller_url             text,
    seller_image           text,
    seller_best_rating     text,
    seller_worst_rating    text,
    seller_rating_count    text,
    seller_rating_value    text,
    aggregate_best_rating  text,
    aggregate_worst_rating text,
    aggregate_rating_count text,
    aggregate_rating_value text,
    timestamp              text default CURRENT_TIMESTAMP,
    tagged                 boolean default false not null
);

create index result_search_id_index
    on result (search_id);

create index result_search_name_index
    on result (name);

create index result_search_seller_name_index
    on result (seller_name);

create index result_search_timestamp_index
    on result (timestamp);

create table item_image
(
    id                     integer not null primary key,
    result_id              integer,
    image_data             text,
    format                 text,
    type                   text,
    hash                   text,
    timestamp              text default CURRENT_TIMESTAMP
);

create index item_image_result_id_index
    on item_image (result_id);

create index item_image_hash_index
    on item_image (hash);

create index item_image_timestamp_index
    on item_image (timestamp);
