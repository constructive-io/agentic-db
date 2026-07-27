-- Deploy: schemas/agentic_db_app_public/tables/calendar_event_notes/alterations/alt0000000002
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_event_notes/table


COMMENT ON TABLE agentic_db_app_public.calendar_event_notes IS E'@behavior +manyToMany';

