-- Deploy: schemas/agentic_db_app_public/tables/habit_chunks/columns/chunk_index/alterations/alt0000002047
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habit_chunks/table
-- requires: schemas/agentic_db_app_public/tables/habit_chunks/columns/chunk_index/column
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


ALTER TABLE "agentic_db_app_public".habit_chunks 
  ALTER COLUMN chunk_index SET NOT NULL;

