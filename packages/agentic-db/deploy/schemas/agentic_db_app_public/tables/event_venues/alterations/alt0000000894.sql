-- Deploy: schemas/agentic_db_app_public/tables/event_venues/alterations/alt0000000894
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_venues/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


COMMENT ON TABLE agentic_db_app_public.event_venues IS E'@behavior +manyToMany';

