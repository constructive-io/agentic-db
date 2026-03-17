-- Deploy: schemas/agentic_db_app_public/tables/goal_projects/columns/entity_id/alterations/alt0000001527
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goal_projects/table
-- requires: schemas/agentic_db_app_public/tables/goal_projects/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/goal_habits/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".goal_projects 
  ALTER COLUMN entity_id SET NOT NULL;

