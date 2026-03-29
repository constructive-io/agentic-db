-- Deploy: schemas/agentic_db_app_public/tables/expenses/columns/amount/alterations/alt0000005463
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/expenses/table
-- requires: schemas/agentic_db_app_public/tables/expenses/columns/amount/column
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/indexes/venues_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.expenses 
  ALTER COLUMN amount SET NOT NULL;

