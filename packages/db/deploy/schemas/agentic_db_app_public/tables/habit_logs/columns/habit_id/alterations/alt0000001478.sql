-- Deploy: schemas/agentic_db_app_public/tables/habit_logs/columns/habit_id/alterations/alt0000001478
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habit_logs/table
-- requires: schemas/agentic_db_app_public/tables/habit_logs/columns/habit_id/column
-- requires: schemas/agentic_db_app_public/tables/habit_logs/columns/updated_at/alterations/alt0000001477


ALTER TABLE "agentic_db_app_public".habit_logs 
  ALTER COLUMN habit_id SET NOT NULL;

