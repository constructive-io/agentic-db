-- Deploy: schemas/agentic_db_app_public/tables/goals/columns/entity_id/alterations/alt0000003366
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goals/table
-- requires: schemas/agentic_db_app_public/tables/goals/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


ALTER TABLE agentic_db_app_public.goals 
  ALTER COLUMN entity_id SET NOT NULL;

