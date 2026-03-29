-- Deploy: schemas/agentic_db_app_public/tables/agents/columns/embedding_stale/alterations/alt0000005383
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/agents/columns/embedding_stale/column
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/indexes/venues_chunks_chunk_index_idx



ALTER TABLE agentic_db_app_public.agents 
    ALTER COLUMN embedding_stale SET DEFAULT true;

