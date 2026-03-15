-- Deploy: schemas/agent_db_app_public/tables/contact_documents/columns/id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_documents/table
-- requires: schemas/agent_db_app_public/tables/contact_phones/constraints/contact_phones_contact_id_fkey/constraint


ALTER TABLE agent_db_app_public.contact_documents 
  ADD COLUMN id uuid;

