-- Deploy: schemas/agentic_db_app_public/tables/goal_projects/columns/goal_id/alterations/alt0000011446
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goal_projects/table
-- requires: schemas/agentic_db_app_public/tables/goal_projects/columns/goal_id/column
-- requires: schemas/agentic_db_app_public/tables/goal_habits/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.goal_projects 
  ALTER COLUMN goal_id SET NOT NULL;

