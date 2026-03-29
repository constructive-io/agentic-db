-- Deploy: schemas/agentic_db_app_public/tables/expenses/columns/embedding_stale/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/expenses/table
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/indexes/venues_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.expenses 
  ADD COLUMN embedding_stale boolean;

