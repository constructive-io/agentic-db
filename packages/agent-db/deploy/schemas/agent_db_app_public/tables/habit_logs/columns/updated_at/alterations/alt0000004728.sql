-- Deploy: schemas/agent_db_app_public/tables/habit_logs/columns/updated_at/alterations/alt0000004728
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/habit_logs/table
-- requires: schemas/agent_db_app_public/tables/habit_logs/columns/updated_at/column
-- requires: schemas/agent_db_app_public/tables/habit_logs/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".habit_logs 
  ALTER COLUMN updated_at SET NOT NULL;

