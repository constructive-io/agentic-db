-- Deploy: schemas/agentic_db_app_public/tables/expenses/columns/description/alterations/alt0000005462
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/expenses/table
-- requires: schemas/agentic_db_app_public/tables/expenses/columns/description/column
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/indexes/venues_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.expenses 
  ALTER COLUMN description SET NOT NULL;

