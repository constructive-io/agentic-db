-- Deploy: schemas/agent_db_app_public/tables/habit_logs/columns/data/alterations/alt0000001514
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/habit_logs/table
-- requires: schemas/agent_db_app_public/tables/habit_logs/columns/data/column
-- requires: schemas/agent_db_app_public/tables/habit_logs/columns/calories/column



ALTER TABLE agent_db_app_public.habit_logs 
    ALTER COLUMN data SET DEFAULT '{}';

