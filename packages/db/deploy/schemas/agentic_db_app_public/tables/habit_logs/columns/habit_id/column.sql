-- Deploy: schemas/agentic_db_app_public/tables/habit_logs/columns/habit_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habit_logs/table
-- requires: schemas/agentic_db_app_public/tables/habit_logs/columns/updated_at/alterations/alt0000001477


ALTER TABLE "agentic_db_app_public".habit_logs 
  ADD COLUMN habit_id uuid;

