-- Deploy: schemas/agentic_db_app_public/tables/goal_projects/alterations/alt0000002717
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goal_projects/table
-- requires: schemas/agentic_db_app_public/tables/project_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".goal_projects 
  DISABLE ROW LEVEL SECURITY;

