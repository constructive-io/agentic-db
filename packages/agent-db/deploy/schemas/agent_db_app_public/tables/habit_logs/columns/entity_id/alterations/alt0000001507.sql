-- Deploy: schemas/agent_db_app_public/tables/habit_logs/columns/entity_id/alterations/alt0000001507
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/habit_logs/table
-- requires: schemas/agent_db_app_public/tables/habits/columns/tags/column
-- requires: schemas/agent_db_app_public/tables/habit_logs/columns/entity_id/column


ALTER TABLE agent_db_app_public.habit_logs 
  ALTER COLUMN entity_id SET NOT NULL;

