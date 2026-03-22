-- Deploy: schemas/agentic_db_app_public/tables/venue_links/columns/embedding_stale/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venue_links/table
-- requires: schemas/agentic_db_app_public/tables/venue_links/columns/url/alterations/alt0000005773


ALTER TABLE agentic_db_app_public.venue_links 
  ADD COLUMN embedding_stale boolean;

