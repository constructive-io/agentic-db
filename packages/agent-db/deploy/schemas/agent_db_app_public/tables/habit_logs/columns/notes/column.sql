-- Deploy: schemas/agent_db_app_public/tables/habit_logs/columns/notes/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/habit_logs/table
-- requires: schemas/agent_db_app_public/tables/habit_logs/columns/data/alterations/alt0000004684


ALTER TABLE "agent_db_app_public".habit_logs 
  ADD COLUMN notes text;

