-- Deploy: schemas/agentic_db_app_public/tables/agents/columns/updated_at/alterations/alt0000005379
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/agents/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/indexes/venues_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.agents 
  ALTER COLUMN updated_at SET NOT NULL;

