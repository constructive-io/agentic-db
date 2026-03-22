-- Deploy: schemas/agentic_db_app_public/tables/events/columns/event_type/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/events/table
-- requires: schemas/agentic_db_app_public/tables/events/columns/name/alterations/alt0000005582


ALTER TABLE agentic_db_app_public.events 
  ADD COLUMN event_type text;

