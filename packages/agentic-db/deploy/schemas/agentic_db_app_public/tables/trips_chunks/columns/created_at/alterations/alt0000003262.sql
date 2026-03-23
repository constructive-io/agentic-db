-- Deploy: schemas/agentic_db_app_public/tables/trips_chunks/columns/created_at/alterations/alt0000003262
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trips_chunks/table
-- requires: schemas/agentic_db_app_public/tables/trips_chunks/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


ALTER TABLE agentic_db_app_public.trips_chunks 
  ALTER COLUMN created_at SET DEFAULT now();

