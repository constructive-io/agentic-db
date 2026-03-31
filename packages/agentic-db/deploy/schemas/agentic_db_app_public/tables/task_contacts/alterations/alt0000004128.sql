-- Deploy: schemas/agentic_db_app_public/tables/task_contacts/alterations/alt0000004128
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/task_contacts/table
-- requires: schemas/agentic_db_app_public/tables/project_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.task_contacts 
  DISABLE ROW LEVEL SECURITY;

