-- Deploy: schemas/agentic_db_app_public/tables/prompts/columns/embedding_text/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompts/table
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/indexes/venues_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.prompts 
  ADD COLUMN embedding_text text;

