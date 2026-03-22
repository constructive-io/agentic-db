-- Deploy: schemas/agentic_db_app_public/tables/venue_chunks/columns/chunk_index/alterations/alt0000005701
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venue_chunks/table
-- requires: schemas/agentic_db_app_public/tables/venue_chunks/columns/chunk_index/column
-- requires: schemas/agentic_db_app_public/tables/venue_chunks/columns/updated_at/alterations/alt0000005700


ALTER TABLE agentic_db_app_public.venue_chunks 
  ALTER COLUMN chunk_index SET NOT NULL;

