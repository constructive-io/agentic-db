-- Deploy: schemas/agentic_db_app_public/tables/contacts/columns/entity_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/images/columns/embedding/column


ALTER TABLE agentic_db_app_public.contacts 
  ADD COLUMN entity_id uuid;

