-- Deploy: schemas/agentic_db_app_public/tables/goals/columns/id/alterations/alt0000015657
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goals/table
-- requires: schemas/agentic_db_app_public/tables/goals/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


ALTER TABLE agentic_db_app_public.goals 
  ALTER COLUMN id SET NOT NULL;

