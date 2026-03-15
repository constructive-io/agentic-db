-- Deploy: schemas/agent_db_app_public/tables/goal_habits/columns/id/alterations/alt0000004741
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/goal_habits/table
-- requires: schemas/agent_db_app_public/tables/goal_habits/columns/id/column
-- requires: schemas/agent_db_app_public/tables/task_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".goal_habits 
  ALTER COLUMN id SET NOT NULL;

