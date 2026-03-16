-- Deploy: schemas/agent_db_app_public/tables/goal_projects/constraints/goal_projects_project_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/projects/table
-- requires: schemas/agent_db_app_public/tables/goal_projects/table
-- requires: schemas/agent_db_app_public/tables/goal_habits/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".goal_projects 
  ADD CONSTRAINT goal_projects_project_id_fkey 
    FOREIGN KEY(project_id) 
    REFERENCES "agent_db_app_public".projects (id) 
    ON DELETE CASCADE;

