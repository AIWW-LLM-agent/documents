create table public.history_items
(
    id                      serial
        primary key,
    field_id                integer,
    year                    integer,
    active                  boolean,
    crop_id                 integer,
    variety                 text,
    till_type               text,
    productivity            numeric,
    productivity_estimate   numeric,
    sowing_date             date,
    harvesting_date         date,
    description             text,
    additional_info         text,
    external_id             text,
    harvested_weight        numeric,
    expected_yield          numeric,
    yield_density           numeric,
    productivity_zone       text,
    grain_class             text,
    irrigation_type         text,
    grain_humidity          numeric,
    grain_garbage_admixture numeric,
    production_cycle_id     integer,
    auto_shape_detect       boolean,
    field_shape_id          integer,
    marketable_weight       numeric,
    created_at              timestamp with time zone default now(),
    updated_at              timestamp with time zone default now()
);

alter table public.history_items owner to postgres;

create table public.crops
(
    id                              serial
        primary key,
    name                            text,
    short_name                      text,
    standard_name                   text,
    season_type                     text,
    color                           text,
    base_crop_id                    integer,
    productivity_estimate_crop_name text,
    additional_info                 text,
    description                     text,
    external_id                     text,
    hidden                          boolean,
    created_at                      timestamp with time zone default now(),
    updated_at                      timestamp with time zone default now()
);

alter table public.crops
    owner to postgres;

create table public.field_groups
(
    id                              serial
        primary key,
    group_folder_id                 integer,
    name                            text,
    description                     text,
    administrative_area_name        text,
    subadministrative_area_name     text,
    locality                        text,
    external_id                     text,
    legal_entity                    text,
    machine_task_default_duration   integer,
    machine_task_default_start_time time,
    accounting_period_closing_date  date,
    created_at                      timestamp with time zone default now(),
    updated_at                      timestamp with time zone default now()
);

alter table public.field_groups
    owner to postgres;

create table public.fields
(
    id                          serial
        primary key,
    field_group_id              integer,
    name                        text,
    additional_name             text,
    description                 text,
    moisture_zone               text,
    shape_simplified_geojson    jsonb,
    current_shape_id            integer,
    calculated_area             numeric,
    legal_area                  numeric,
    tillable_area               numeric,
    administrative_area_name    text,
    subadministrative_area_name text,
    locality                    text,
    field_type                  text,
    parent_id                   integer,
    lat                         numeric,
    long                        numeric,
    additional_info             text,
    external_id                 text,
    public_registry_key         text,
    created_at                  timestamp with time zone default now(),
    updated_at                  timestamp with time zone default now(),
    x_custom_nomer_efis_zsn     text,
    x_custom_obrabotka_semyan   text,
    x_custom_kharakteristika    text
);

alter table public.fields
    owner to postgres;

