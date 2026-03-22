-- Deploy: schemas/agentic_db_app_public/tables/goal_habits/columns/goal_id/alterations/alt0000002079
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goal_habits/table
-- requires: schemas/agentic_db_app_public/tables/goal_habits/columns/goal_id/column
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


ALTER TABLE "agentic_db_app_public".goal_habits 
  ALTER COLUMN goal_id SET NOT NULL;

