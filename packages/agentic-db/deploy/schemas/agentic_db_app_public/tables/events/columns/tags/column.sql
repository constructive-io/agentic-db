-- Deploy: schemas/agentic_db_app_public/tables/events/columns/tags/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/events/table
-- requires: schemas/agentic_db_app_public/tables/events/columns/notes_text/column


ALTER TABLE agentic_db_app_public.events 
  ADD COLUMN tags citext[];

