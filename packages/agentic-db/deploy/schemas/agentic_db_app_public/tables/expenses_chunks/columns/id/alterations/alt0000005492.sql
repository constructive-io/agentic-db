-- Deploy: schemas/agentic_db_app_public/tables/expenses_chunks/columns/id/alterations/alt0000005492
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/expenses_chunks/table
-- requires: schemas/agentic_db_app_public/tables/expenses_chunks/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/indexes/venues_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.expenses_chunks 
  ALTER COLUMN id SET NOT NULL;

