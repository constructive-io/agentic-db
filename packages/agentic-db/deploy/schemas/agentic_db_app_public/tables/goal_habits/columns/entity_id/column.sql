-- Deploy: schemas/agentic_db_app_public/tables/goal_habits/columns/entity_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goal_habits/table
-- requires: schemas/agentic_db_app_public/tables/task_projects/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".goal_habits 
  ADD COLUMN entity_id uuid;

