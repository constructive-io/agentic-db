-- Deploy: schemas/agentic_db_app_public/tables/event_links/columns/title/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_links/table
-- requires: schemas/agentic_db_app_public/tables/event_links/columns/updated_at/alterations/alt0000003863


ALTER TABLE agentic_db_app_public.event_links 
  ADD COLUMN title text;

