-- Deploy: schemas/agentic_db_app_public/tables/expenses/columns/id/alterations/alt0000005460
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/expenses/table
-- requires: schemas/agentic_db_app_public/tables/expenses/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/indexes/venues_chunks_chunk_index_idx



ALTER TABLE agentic_db_app_public.expenses 
    ALTER COLUMN id SET DEFAULT uuidv7();

