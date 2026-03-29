-- Deploy: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_occurred_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/expenses/table
-- requires: schemas/agentic_db_app_public/tables/expenses/columns/occurred_at/column
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/indexes/venues_chunks_chunk_index_idx


CREATE INDEX expenses_occurred_at_idx ON agentic_db_app_public.expenses USING BTREE ( occurred_at );

