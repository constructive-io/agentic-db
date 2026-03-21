-- Deploy: schemas/agentic_db_app_public/tables/venue_chunks/columns/content/alterations/alt0000001831
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venue_chunks/table
-- requires: schemas/agentic_db_app_public/tables/venue_chunks/columns/content/column
-- requires: schemas/agentic_db_app_public/tables/venue_chunks/columns/chunk_index/alterations/alt0000001830


ALTER TABLE "agentic_db_app_public".venue_chunks 
  ALTER COLUMN content SET NOT NULL;

