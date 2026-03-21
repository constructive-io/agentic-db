-- Deploy: schemas/agentic_db_app_public/tables/idea_chunks/columns/idea_id/alterations/alt0000004702
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/idea_chunks/table
-- requires: schemas/agentic_db_app_public/tables/idea_chunks/columns/idea_id/column
-- requires: schemas/agentic_db_app_public/tables/habit_logs/indexes/habit_logs_habit_id_idx


ALTER TABLE agentic_db_app_public.idea_chunks 
  ALTER COLUMN idea_id SET NOT NULL;

