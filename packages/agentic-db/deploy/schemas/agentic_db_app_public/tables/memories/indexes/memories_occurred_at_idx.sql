-- Deploy: schemas/agentic_db_app_public/tables/memories/indexes/memories_occurred_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories/table
-- requires: schemas/agentic_db_app_public/tables/memories/columns/occurred_at/column
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


CREATE INDEX memories_occurred_at_idx ON agentic_db_app_public.memories USING BTREE ( occurred_at );

