-- Deploy: schemas/agentic_db_app_public/tables/project_contacts/columns/contact_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/project_contacts/table
-- requires: schemas/agentic_db_app_public/tables/templates/indexes/templates_is_active_idx


ALTER TABLE agentic_db_app_public.project_contacts 
  ADD COLUMN contact_id uuid;

