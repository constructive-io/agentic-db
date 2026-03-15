-- Deploy: schemas/agent_db_app_public/tables/habit_logs/columns/completed_at/alterations/alt0000001513
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/habit_logs/table
-- requires: schemas/agent_db_app_public/tables/habit_logs/columns/completed_at/column
-- requires: schemas/agent_db_app_public/tables/habit_logs/columns/habit_id/alterations/alt0000001512


ALTER TABLE agent_db_app_public.habit_logs 
  ALTER COLUMN completed_at SET NOT NULL;

