-- Deploy: schemas/agent_db_app_public/tables/habit_logs/columns/habit_id/alterations/alt0000004682
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/habit_logs/table
-- requires: schemas/agent_db_app_public/tables/habit_logs/columns/habit_id/column
-- requires: schemas/agent_db_app_public/tables/habit_logs/columns/updated_at/alterations/alt0000004681


ALTER TABLE "agent_db_app_public".habit_logs 
  ALTER COLUMN habit_id SET NOT NULL;

