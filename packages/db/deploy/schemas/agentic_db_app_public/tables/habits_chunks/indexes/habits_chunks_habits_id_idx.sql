-- Deploy: schemas/agentic_db_app_public/tables/habits_chunks/indexes/habits_chunks_habits_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habits_chunks/table
-- requires: schemas/agentic_db_app_public/tables/habits_chunks/columns/habits_id/column
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


CREATE INDEX habits_chunks_habits_id_idx ON "agentic_db_app_public".habits_chunks USING BTREE ( habits_id );

