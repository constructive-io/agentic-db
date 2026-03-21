-- Deploy: schemas/agentic_db_app_public/tables/events/columns/name/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/events/table
-- requires: schemas/agentic_db_app_public/tables/events/columns/updated_at/alterations/alt0000003724


ALTER TABLE agentic_db_app_public.events 
  ADD COLUMN name text;

