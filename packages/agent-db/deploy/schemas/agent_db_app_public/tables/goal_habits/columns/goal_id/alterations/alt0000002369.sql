-- Deploy: schemas/agent_db_app_public/tables/goal_habits/columns/goal_id/alterations/alt0000002369
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/goal_habits/table
-- requires: schemas/agent_db_app_public/tables/goal_habits/columns/goal_id/column
-- requires: schemas/agent_db_app_public/tables/task_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".goal_habits 
  ALTER COLUMN goal_id SET NOT NULL;

