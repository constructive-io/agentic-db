-- Deploy: schemas/agentic_db_app_public/tables/venue_links/columns/venue_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venue_links/table


ALTER TABLE "agentic_db_app_public".venue_links 
  ADD COLUMN venue_id uuid;

