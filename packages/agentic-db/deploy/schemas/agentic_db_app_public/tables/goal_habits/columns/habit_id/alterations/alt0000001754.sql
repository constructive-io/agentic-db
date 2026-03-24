-- Deploy: schemas/agentic_db_app_public/tables/goal_habits/columns/habit_id/alterations/alt0000001754
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goal_habits/table
-- requires: schemas/agentic_db_app_public/tables/goal_habits/columns/habit_id/column
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


ALTER TABLE "agentic_db_app_public".goal_habits 
  ALTER COLUMN habit_id SET NOT NULL;

