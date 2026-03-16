-- Deploy: schemas/agent_db_app_public/tables/habit_logs/columns/activity_type/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/habit_logs/table
-- requires: schemas/agent_db_app_public/tables/habit_logs/columns/completed_at/alterations/alt0000002331


ALTER TABLE "agent_db_app_public".habit_logs 
  ADD COLUMN activity_type text;

