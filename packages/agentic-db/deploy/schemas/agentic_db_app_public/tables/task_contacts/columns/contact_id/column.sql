-- Deploy: schemas/agentic_db_app_public/tables/task_contacts/columns/contact_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/task_contacts/table
-- requires: schemas/agentic_db_app_public/tables/project_contacts/indexes/project_contacts_contact_id_idx


ALTER TABLE agentic_db_app_public.task_contacts 
  ADD COLUMN contact_id uuid;

