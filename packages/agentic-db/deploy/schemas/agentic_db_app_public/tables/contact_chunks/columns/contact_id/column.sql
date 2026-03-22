-- Deploy: schemas/agentic_db_app_public/tables/contact_chunks/columns/contact_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_chunks/table
-- requires: schemas/agentic_db_app_public/tables/venue_links/indexes/venue_links_venue_id_idx


ALTER TABLE "agentic_db_app_public".contact_chunks 
  ADD COLUMN contact_id uuid;

