-- Deploy: schemas/agentic_db_app_public/tables/venue_links/columns/id/alterations/alt0000000002
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venue_links/table
-- requires: schemas/agentic_db_app_public/tables/venue_links/columns/id/column


ALTER TABLE agentic_db_app_public.venue_links 
  ALTER COLUMN id SET DEFAULT uuidv7();

