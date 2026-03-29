-- Deploy: schemas/agentic_db_app_public/tables/prompts/columns/created_at/alterations/alt0000005452
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompts/table
-- requires: schemas/agentic_db_app_public/tables/prompts/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/indexes/venues_chunks_chunk_index_idx



ALTER TABLE agentic_db_app_public.prompts 
    ALTER COLUMN created_at SET DEFAULT now();

