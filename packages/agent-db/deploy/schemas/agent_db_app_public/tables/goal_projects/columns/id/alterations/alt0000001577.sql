-- Deploy: schemas/agent_db_app_public/tables/goal_projects/columns/id/alterations/alt0000001577
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/goal_projects/table
-- requires: schemas/agent_db_app_public/tables/goal_projects/columns/id/column
-- requires: schemas/agent_db_app_public/tables/goal_habits/policies/auth_del_entity_membership/policy


ALTER TABLE agent_db_app_public.goal_projects 
  ALTER COLUMN id SET NOT NULL;

