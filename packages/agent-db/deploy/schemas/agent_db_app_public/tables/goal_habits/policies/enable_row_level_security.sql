-- Deploy: schemas/agent_db_app_public/tables/goal_habits/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/goal_habits/table
-- requires: schemas/agent_db_app_public/tables/task_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.goal_habits 
  ENABLE ROW LEVEL SECURITY;

