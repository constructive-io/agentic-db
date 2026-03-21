-- Deploy: schemas/agentic_db_app_public/tables/prompt_chunks/columns/prompt_id/alterations/alt0000002104
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompt_chunks/table
-- requires: schemas/agentic_db_app_public/tables/prompt_chunks/columns/prompt_id/column
-- requires: schemas/agentic_db_app_public/tables/goal_chunks/indexes/goal_chunks_goal_id_idx


ALTER TABLE "agentic_db_app_public".prompt_chunks 
  ALTER COLUMN prompt_id SET NOT NULL;

