-- Deploy: schemas/agentic_db_app_public/tables/habit_logs/columns/activity_type/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habit_logs/table
-- requires: schemas/agentic_db_app_public/tables/habit_logs/columns/completed_at/alterations/alt0000001479


ALTER TABLE "agentic_db_app_public".habit_logs 
  ADD COLUMN activity_type text;

