-- Deploy: schemas/agentic_db_app_public/tables/place_chunks/columns/chunk_index/alterations/alt0000006321
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/place_chunks/table
-- requires: schemas/agentic_db_app_public/tables/place_chunks/columns/chunk_index/column
-- requires: schemas/agentic_db_app_public/tables/place_chunks/columns/updated_at/alterations/alt0000006320


ALTER TABLE agentic_db_app_public.place_chunks 
  ALTER COLUMN chunk_index SET NOT NULL;

