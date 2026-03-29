-- Deploy: schemas/agentic_db_app_public/tables/prompts/columns/content/alterations/alt0000005450
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompts/table
-- requires: schemas/agentic_db_app_public/tables/prompts/columns/content/column
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/indexes/venues_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.prompts 
  ALTER COLUMN content SET NOT NULL;

