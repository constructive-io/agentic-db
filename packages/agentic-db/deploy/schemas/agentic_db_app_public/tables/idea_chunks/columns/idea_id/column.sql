-- Deploy: schemas/agentic_db_app_public/tables/idea_chunks/columns/idea_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/idea_chunks/table
-- requires: schemas/agentic_db_app_public/tables/habit_logs/indexes/habit_logs_habit_id_idx


ALTER TABLE "agentic_db_app_public".idea_chunks 
  ADD COLUMN idea_id uuid;

