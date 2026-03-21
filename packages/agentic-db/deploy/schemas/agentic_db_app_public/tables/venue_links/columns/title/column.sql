-- Deploy: schemas/agentic_db_app_public/tables/venue_links/columns/title/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venue_links/table
-- requires: schemas/agentic_db_app_public/tables/venue_links/columns/updated_at/alterations/alt0000003872


ALTER TABLE agentic_db_app_public.venue_links 
  ADD COLUMN title text;

