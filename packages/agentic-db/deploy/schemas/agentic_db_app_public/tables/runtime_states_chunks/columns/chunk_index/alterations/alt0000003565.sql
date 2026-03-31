-- Deploy: schemas/agentic_db_app_public/tables/runtime_states_chunks/columns/chunk_index/alterations/alt0000003565
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_states_chunks/table
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx
-- requires: schemas/agentic_db_app_public/tables/runtime_states_chunks/columns/chunk_index/column


ALTER TABLE agentic_db_app_public.runtime_states_chunks 
  ALTER COLUMN chunk_index SET NOT NULL;

