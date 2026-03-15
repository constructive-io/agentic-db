-- Deploy: schemas/agent_db_app_public/tables/goal_projects/constraints/goal_projects_goal_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/goals/table
-- requires: schemas/agent_db_app_public/tables/goal_projects/table
-- requires: schemas/agent_db_app_public/tables/goal_habits/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".goal_projects 
  ADD CONSTRAINT goal_projects_goal_id_fkey 
    FOREIGN KEY(goal_id) 
    REFERENCES "agent_db_app_public".goals (id) 
    ON DELETE CASCADE;

