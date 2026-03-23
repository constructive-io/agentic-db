-- Deploy: schemas/agentic_db_app_public/tables/habits_chunks/indexes/habits_chunks_created_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habits_chunks/table
-- requires: schemas/agentic_db_app_public/tables/habits_chunks/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


CREATE INDEX habits_chunks_created_at_idx ON "agentic_db_app_public".habits_chunks ( created_at );

