-- Deploy: schemas/agentic_db_app_public/tables/event_venues/alterations/alt0000000002
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_venues/table


COMMENT ON TABLE agentic_db_app_public.event_venues IS E'@behavior +manyToMany';

