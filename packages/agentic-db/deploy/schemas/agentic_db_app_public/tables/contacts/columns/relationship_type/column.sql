-- Deploy: schemas/agentic_db_app_public/tables/contacts/columns/relationship_type/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/contacts/columns/birthday/column


ALTER TABLE agentic_db_app_public.contacts 
  ADD COLUMN relationship_type text;

