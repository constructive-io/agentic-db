-- Deploy: schemas/agentic_db_app_public/tables/habit_chunks/columns/content/alterations/alt0000002902
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habit_chunks/table
-- requires: schemas/agentic_db_app_public/tables/habit_chunks/columns/content/column
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


ALTER TABLE agentic_db_app_public.habit_chunks 
  ALTER COLUMN content SET NOT NULL;

