-- Deploy: schemas/agentic_db_app_public/tables/task_projects/columns/project_id/alterations/alt0000013610
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/task_projects/table
-- requires: schemas/agentic_db_app_public/tables/task_projects/columns/project_id/column
-- requires: schemas/agentic_db_app_public/tables/task_contacts/indexes/task_contacts_contact_id_idx


ALTER TABLE agentic_db_app_public.task_projects 
  ALTER COLUMN project_id SET NOT NULL;

