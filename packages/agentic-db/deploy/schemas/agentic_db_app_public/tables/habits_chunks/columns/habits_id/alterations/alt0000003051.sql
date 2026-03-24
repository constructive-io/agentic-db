-- Deploy: schemas/agentic_db_app_public/tables/habits_chunks/columns/habits_id/alterations/alt0000003051
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habits_chunks/table
-- requires: schemas/agentic_db_app_public/tables/habits_chunks/columns/habits_id/column
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


ALTER TABLE agentic_db_app_public.habits_chunks 
  ALTER COLUMN habits_id SET NOT NULL;

