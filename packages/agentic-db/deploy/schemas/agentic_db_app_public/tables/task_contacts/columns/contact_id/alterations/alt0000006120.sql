-- Deploy: schemas/agentic_db_app_public/tables/task_contacts/columns/contact_id/alterations/alt0000006120
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/task_contacts/table
-- requires: schemas/agentic_db_app_public/tables/task_contacts/columns/contact_id/column
-- requires: schemas/agentic_db_app_public/tables/project_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.task_contacts 
  ALTER COLUMN contact_id SET NOT NULL;

