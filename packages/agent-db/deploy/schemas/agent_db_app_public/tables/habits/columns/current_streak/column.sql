-- Deploy: schemas/agent_db_app_public/tables/habits/columns/current_streak/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/habits/table
-- requires: schemas/agent_db_app_public/tables/habits/columns/target_count/column


ALTER TABLE agent_db_app_public.habits 
  ADD COLUMN current_streak int;

