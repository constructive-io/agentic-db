-- Deploy: schemas/agent_db_app_public/tables/habit_logs/columns/created_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/habit_logs/table
-- requires: schemas/agent_db_app_public/tables/habit_logs/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".habit_logs 
  ADD COLUMN created_at timestamptz;

